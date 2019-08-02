class HomeController < ApplicationController
	#before_action :authenticate_user!
	layout 'main'
	def index
		#get_details(asset_details)
	end

	private
	def get_details(asset_details=[])
		@data = []
		total_defects_count = 0
		total_app_profiles = 0
		asset_details.each do |mac|
			mac_data = {}
			mac_data['mac'] = mac
			total_mac_defect_detail = []
			mac_defect_details = mac.mac_defect_details
			total_defects_count += mac_defect_details.count

			mac_defect_details.each do |mac_defect_detail|
				mac_defect_detail_data = {}
				mac_defect_detail_data['mac_defect_detail'] = mac_defect_detail
				app_profiles = mac_defect_detail.app_profiles
				mac_defect_detail_data['app_profiles'] = app_profiles
				total_app_profiles += app_profiles.count
				#mac_defect_detail_data['snapshot'] = mac_defect_detail.snapshot
				total_mac_defect_detail << mac_defect_detail_data
			end
			mac_data['mac_defect_details'] = total_mac_defect_detail
			@data << mac_data
		end

		@total_macs = macs.count
		@total_defects = total_defects_count
		@total_app_profiles = total_app_profiles
	end
end
