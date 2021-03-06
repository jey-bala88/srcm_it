class PrintersController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@printers = Printer.all
    end

    def new
    end

    def create
    	asset_detail = Printer.create(
			asset_params[:asset_detail]
		)
		redirect_to printers_path
	end
	
	def edit
		@printer = Printer.find(params[:id])
	end

	def update
		@printer = Printer.find(params[:id])
		@printer.update_attributes(asset_params[:asset_detail])
		redirect_to printers_path
	end

	def destroy
		@printer = Printer.find(params[:id])
		@printer.delete
		redirect_to printers_path
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
