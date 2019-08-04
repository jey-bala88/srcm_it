class NasController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@nas_details = Nas.all
    end

    def new
    end

	def create
    	asset_detail = Nas.new(
			asset_params[:asset_detail]
		)
		asset_detail.save(:validate => false)
		redirect_to nas_path
	end
	
	def edit
		@nas = Nas.find(params[:id])
	end

	def update
		@nas = Nas.find(params[:id])
		@nas.assign_attributes(asset_params[:asset_detail])
		@nas.save(:validate => false)
		redirect_to nas_path
	end

	def destroy
		@nas = Nas.find(params[:id])
		@nas.delete
		redirect_to nas_path
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
