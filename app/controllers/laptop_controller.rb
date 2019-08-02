class LaptopController < ApplicationController
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

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
