class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead. 
    
  protect_from_forgery with: :exception

  def toast(type, text)
    flash[:toastr] = { type => text }
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  
  protected

  def reset_session
    current_user = nil
    session[:user_id] = nil
    super
  end  
end
