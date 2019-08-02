require 'net/ldap'
require 'devise/strategies/authenticatable'

module Devise
  module Strategies
    class LdapAuthenticatable < Authenticatable
      CN_PATTERN = /CN=(?<ldap_group>.*)$/

      def authenticate!
        if params[:user]
          ldap = PxsceneTool.auth.ldap
          connection = PxsceneTool.ldapconnection
          filter = Net::LDAP::Filter.eq( "sAMAccountName", username )
          user = connection.search(filter: filter)

          unless user.present?
            Rails.logger.info "Login Time: #{Time.now}, User:  #{username} logged in failed due to invalid credentials."
            return fail(:invalid_login)
          end

          connection = Net::LDAP.new(host: ldap.host,
            port: ldap.port,
            force_no_page: true,
            base: ldap.base,
            encryption: :simple_tls,
             auth: {
               method: :simple,
               username: user.first.dn,
               password: password
            })

          if connection.bind
            user = User.find_or_create_by(username: username)

            result_attrs = ["sAMAccountName", "displayName", "memberof"]           
            search_filter = Net::LDAP::Filter.eq("sAMAccountName", username)

            groups = []
            connection.search(:filter => search_filter, :attributes => result_attrs, :return_result => true) { |item|
              group =  item.memberof rescue nil
              groups << group if group
            }
            groups = groups.flatten.uniq
            groups = groups.select{|gr| gr.include? ("Reference Development Kit")}
            groups = groups.map {|item| CN_PATTERN.match(item.split(",").first)}
            groups = groups.map{|item| item[:ldap_group]}

            matched_groups = PxsceneTool.login_permitted_groups & groups
            unless matched_groups.empty?
              success!(user)
              Rails.logger.info "Login Time: #{Time.now}, User:  #{username} logged in successfully."
            else
              Rails.logger.info "Login Time: #{Time.now}, User:  #{username} logged in failed due to invalid credentials."
              return fail(:invalid_login)
            end
          else
            Rails.logger.info "Login Time: #{Time.now}, User:  #{username} logged in failed due to invalid credentials."
            return fail(:invalid_login)
          end
        end
      end

      def username
        params[:user][:username]
      end

      def password
        request.request_parameters[:user][:password]
      end

    end
  end
end

Warden::Strategies.add(:ldap_authenticatable, Devise::Strategies::LdapAuthenticatable)