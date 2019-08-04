class SwitchesController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@switch_details = Switch.all
    end

    def new
    end

    def create
    	asset_detail = Switch.create(
			asset_params[:asset_detail]
		)
		redirect_to switches_path
	end
	
	def edit
		@switch = Switch.find(params[:id])
	end

	def update
		@switch = Switch.find(params[:id])
		@switch.update_attributes(asset_params[:asset_detail])
		redirect_to switches_path
	end

	def destroy
		@switch = Switch.find(params[:id])
		@switch.delete
		redirect_to switches_path
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
