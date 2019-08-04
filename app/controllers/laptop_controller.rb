class LaptopController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@laptop_details = Laptop.all
    end

    def new
    end

    def create
    	asset_detail = Laptop.create(
			asset_params[:asset_detail]
		)
		redirect_to laptop_index_path
	end
	
	def edit
		@laptop = Laptop.find(params[:id])
	end

	def update
		@laptop = Laptop.find(params[:id])
		@laptop.update_attributes(asset_params[:asset_detail])
		redirect_to laptop_index_path
	end

	def destroy
		@laptop = Laptop.find(params[:id])
		@laptop.delete
		redirect_to laptop_index_path
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
