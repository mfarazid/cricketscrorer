class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  
  def edit
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to welcome_home_path, toast('success','User updated successfully.') }
      else
        format.html { render action: "edit" }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :provider, :uid, :name, :email)
    end  
end
