require 'spec_helper'

describe WelcomeController do

  describe "GET home" do
    it "renders the home template" do      
      get :home
      current_user = 123456
      expect(response).to render_template :home
    end
    it "redirect_to the welcome template" do      
      get :home
      current_user = nil
      expect(response).to redirect_to welcome_welcome_path
    end
  end
  
  describe "GET signout" do
    it "renders the signout template" do
      get :signout
      expect(response).to render_template("signout")
    end
  end
 
  describe "GET welcome" do
    it "renders the welcome template" do
      get :welcome
      expect(response).to render_template("welcome")
    end
  end  
end
