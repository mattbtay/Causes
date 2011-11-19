class CausesController < ApplicationController
	respond_to :html, :json
	
	def new
		@cause = Cause.new
	end
	
	def create
		@cause = Cause.new(params[:cause])

		if @cause.save
			# return success
			respond_with @cause
		else
			#return failure
			render :text => 'Failed'
		end
	end
	
	def destroy
	end	
end
