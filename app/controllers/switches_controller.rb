class SwitchesController < ApplicationController
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
		redirect_to switches_index_path
	end
	
	def edit
		@switch_details = Switch.find(params[:id])
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
