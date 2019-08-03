class OthersController < ApplicationController
	before_action :authenticate_user!
    layout 'main'

    def index
    	@others = Other.all
    end

    def new
    end

    def create
    	asset_detail = Other.create(
			asset_params[:asset_detail]
		)
		redirect_to others_path
	end
	
	def edit
		@other = Other.find(params[:id])
	end

    private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
