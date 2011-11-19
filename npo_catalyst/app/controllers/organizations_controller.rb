class OrganizationsController < ApplicationController
	respond_to :html, :json

	def new
		@organization = Organization.new
	end

	def create
		@organization = Organization.new(params[:organization])
		if @organization.save
			respond_with @organization
		else
			render :text => 'Failed'
		end
	end

	def destroy
	end
end
