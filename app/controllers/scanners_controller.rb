class ScannersController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@scanner_details = Scanner.all
    end

    def new
    end

    def create
    	asset_detail = Scanner.create(
			asset_params[:asset_detail]
		)
		redirect_to scanners_path
	end
	
	def edit
		@scanner = Scanner.find(params[:id])
	end

	def update
		@scanner = Scanner.find(params[:id])
		@scanner.update_attributes(asset_params[:asset_detail])
		redirect_to scanners_path
	end

	def destroy
		@scanner = Scanner.find(params[:id])
		@scanner.delete
		redirect_to scanners_path
	end
    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
