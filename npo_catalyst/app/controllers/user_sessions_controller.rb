class UserSessionsController < ApplicationController
	def new
		@user_session = UserSession.new
	end

	def create
		@user_session = UserSession.new(params[:user_session])

		if @user_session.save
			render :text => "Login Succeeded"
		else
			render :text => "Login Unsuccessful"
		end
	end

	def destroy
		@user_session = UserSession.find
		@user_Session.destroy
	end
end
