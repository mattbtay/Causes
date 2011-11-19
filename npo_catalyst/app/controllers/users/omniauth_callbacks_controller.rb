class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      #success
      omniauth = request.env["omniauth.auth"]
      @user.remote_avatar_url = omniauth.info.image
      @user.save!
      render :text => @user.avatar.url
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
    end
  end
end