class UpdatesController < ApplicationController
	respond_to :html, :json

	def new
		@update = Update.new
	end

	def create
		@update = Update.new(params[:update])

		if @update.save
			#return success
			respond_with @update
		else
			#return failure
			render :text => 'Failed'
		end
	end

	def destroy
	end	
end
