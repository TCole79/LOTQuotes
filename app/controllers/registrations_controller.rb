class RegistrationsController < ApplicationController

  add_flash_types :danger, :info, :warning, :success, :messages
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/', success: "All set up!"
    else
      redirect_to '/sign_up', warning: "Please fill out all fields, passwords must be a min 5 characters"
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
