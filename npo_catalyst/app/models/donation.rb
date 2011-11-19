class Donation < ActiveRecord::Base
	belongs_to :user
	belongs_to :cause
	respond_to :html, :json

	def new
		@donation = Donation.new
	end

	def create
		@donation = Donation.new(params[:donation])
		if @donation.save
			#return success
		else
			#return failure
		end
	end

	def destroy
	end
end
