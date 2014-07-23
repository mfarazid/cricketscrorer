class WelcomeController < ApplicationController

  def welcome
  end 

  def signout
  end

  def home
    redirect_to welcome_welcome_path if current_user.blank?
  end   
end
