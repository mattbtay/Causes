class Update < ActiveRecord::Base
	belongs_to :user
	belongs_to :cause
	respond_to :html, :json

	def new
		@update = Update.new
	end

	def create
		@update = Update.new(params[:update])

		if @update.save
			#return success
		else
			#return failure
		end
	end

	def destroy
	end
end
