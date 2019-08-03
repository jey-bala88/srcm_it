class DesktopsController < ApplicationController
	before_action :authenticate_user!
    layout 'main'
    def index
    	@desktop_details = Desktop.all
    end

    def new
    end

    def create
    	asset_detail = Desktop.create(
			asset_params[:asset_detail]
		)
		redirect_to laptop_index_path
	end
	
	def edit
		@desktop = Desktop.find(params[:id])
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
