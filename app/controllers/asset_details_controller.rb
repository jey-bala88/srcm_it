class AssetDetailsController < ApplicationController
	layout 'main'
	def new
	end

	def create
		asset_detail = AssetDetail.create(
			asset_params[:asset_detail]
		)

		case asset_params[:asset_detail][:asset_type]
		when 'desktop'
			asset_detail.create_desktop_server_laptop(
				asset_params[:dsl]
			)
		when 'server'
			asset_detail.create_desktop_server_laptop(
				asset_params[:dsl]
			)
		when 'laptop'
			asset_detail.create_desktop_server_laptop(
				asset_params[:dsl]
			)
		when 'printer'
			asset_detail.create_printer(
				asset_params[:printer]
			)
		when 'nas'
			asset_detail.create_nas(
				asset_params[:nas]
			)
		when 'nd'
			asset_detail.create_network_device(
				asset_params[:nd]
			)
		end

		redirect_to root_url
	end

	def edit
		@asset_detail = AssetDetail.find(params[:id])
	end

	def update
		asset_detail = AssetDetail.find(
			params[:id]
		)
		asset_detail.update_attributes(params[:asset_detail])

		case asset_detail.asset_type
		when 'desktop'
			asset_detail.desktop_server_laptop.update_attributes(
				params[:dsl]
			)
		when 'server'
			asset_detail.desktop_server_laptop.update_attributes(
				params[:dsl]
			)
		when 'laptop'
			asset_detail.desktop_server_laptop.update_attributes(
				params[:dsl]
			)
		when 'printer'
			asset_detail.printer.update_attributes(
				params[:printer]
			)
		when 'nas'
			asset_detail.nas.update_attributes(
				params[:nas]
			)
		when 'nd'
			asset_detail.network_device.update_attributes(
				params[:nd]
			)
		end

		redirect_to root_url
	end

	private
	def asset_params
		ActionController::Parameters.permit_all_parameters = true
		params.permitted?
		params
	end
end
