class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			render :text => 'Created user'
		else
			render :text => 'Did not create user'
		end
	end

	def destroy
	end
end
