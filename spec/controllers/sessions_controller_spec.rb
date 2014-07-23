require 'spec_helper'

describe SessionsController do

  before do
    User.all.each do |u|
      u.destroy
    end
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:facebook]
  end
 
  describe "#create" do
 
    context "provider facebook" do

      it "should successfully create a user" do
        expect {
          post :create, provider: :facebook
        }.to change{ User.count }.by(1)
      end

      it "should successfully create a session" do
        session[:user_id].should be_nil
        post :create, provider: :facebook
        session[:user_id].should_not be_nil
      end
   
      it "should redirect the welcome home url" do
        post :create, provider: :facebook
        response.should redirect_to welcome_home_path
      end
    end

    context "provider twitter" do

      it "should successfully create a user" do
        expect {
          post :create, provider: :twitter
        }.to change{ User.count }.by(1)
      end

      it "should successfully create a session" do
        session[:user_id].should be_nil
        post :create, provider: :twitter
        session[:user_id].should_not be_nil
      end
   
      it "should redirect the welcome home url" do
        post :create, provider: :twitter
        response.should redirect_to welcome_home_path
      end
    end

    context "provider google" do

      it "should successfully create a user" do
        expect {
          post :create, provider: :google
        }.to change{ User.count }.by(1)
      end

      it "should successfully create a session" do
        session[:user_id].should be_nil
        post :create, provider: :google
        session[:user_id].should_not be_nil
      end
   
      it "should redirect the welcome home url" do
        post :create, provider: :google
        response.should redirect_to welcome_home_path
      end
    end
            
  end
 
  describe "#destroy" do
    
    context "provider facebook" do
      before do
        post :create, provider: :facebook
      end
   
      it "should clear the session" do
        session[:user_id].should_not be_nil
        delete :destroy
        session[:user_id].should be_nil
      end
   
      it "should redirect to the home page" do
        delete :destroy
        response.should redirect_to welcome_signout_path
      end
    
    end

    context "provider facebook" do
      before do
        post :create, provider: :facebook
      end
   
      it "should clear the session" do
        session[:user_id].should_not be_nil
        delete :destroy
        session[:user_id].should be_nil
      end
   
      it "should redirect to the home page" do
        delete :destroy
        response.should redirect_to welcome_signout_path
      end
    
    end

    context "provider twitter" do
      before do
        post :create, provider: :twitter
      end
   
      it "should clear the session" do
        session[:user_id].should_not be_nil
        delete :destroy
        session[:user_id].should be_nil
      end
   
      it "should redirect to the home page" do
        delete :destroy
        response.should redirect_to welcome_signout_path
      end
    
    end

    context "provider google" do
      before do
        post :create, provider: :google
      end
   
      it "should clear the session" do
        session[:user_id].should_not be_nil
        delete :destroy
        session[:user_id].should be_nil
      end
   
      it "should redirect to the home page" do
        delete :destroy
        response.should redirect_to welcome_signout_path
      end
    
    end          
  end
  
end
