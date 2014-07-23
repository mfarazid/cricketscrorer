class SessionsController < ApplicationController
  
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to welcome_home_path, toast('success', 'Signed in!')
  end

  def destroy
    reset_session
    redirect_to welcome_signout_path, toast('success', 'Signed out!')
  end
  
end
