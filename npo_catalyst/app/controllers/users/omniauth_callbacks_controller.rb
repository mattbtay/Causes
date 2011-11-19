class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      #success
      omniauth = request.env["omniauth.auth"]
      render :text => omniauth.info.image
      #fb_user = FbGraph::User.new('me', :access_token => session[:omniauth]["credentials"]["token"])
      #fb_user.fetch
      #render :text => fb_user.name
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
    end
  end
end