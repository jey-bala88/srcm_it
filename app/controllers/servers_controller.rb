class ServersController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@server_details = Server.all
    end

    def new
    end

    def create
    	asset_detail = Server.create(
			asset_params[:asset_detail]
		)
		redirect_to servers_path
	end
	
	def edit
		@server = Server.find(params[:id])
	end

	def update
		@server = Server.find(params[:id])
		@server.update_attributes(asset_params[:asset_detail])
		redirect_to servers_path
	end

	def destroy
		@server = Server.find(params[:id])
		@server.delete
		redirect_to servers_path
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
