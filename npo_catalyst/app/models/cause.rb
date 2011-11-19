class Cause < ActiveRecord::Base
	belongs_to :user
	belongs_to :organization
	respond_to :html, :json
	
	def new
		@cause = Cause.new
	end
	
	def create
		@cause = Cause.new(params[:cause])

		if @cause.save
			# return success
		else
			#return failure
		end
	end
	
	def destroy
	end	
end
