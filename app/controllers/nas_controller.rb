class NasController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@nas_details = Nas.all
    end

    def new
    end

    def create
    	asset_detail = Nas.create(
			asset_params[:asset_detail]
		)
		redirect_to nas_path
	end
	
	def edit
		@nas = Nas.find(params[:id])
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
