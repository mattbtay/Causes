class DonationsController < ApplicationController
	respond_to :html, :json

	def new
		@donation = Donation.new
	end

	def create
		@donation = Donation.new(params[:donation])
		if @donation.save
			#return success
			respond_with @donation
		else
			#return failure
			render :text => 'Failed'
		end
	end

	def destroy
	end
end
