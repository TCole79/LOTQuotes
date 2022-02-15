class RegistrationsController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/', success: "Your account was successfully created!"
    else
      redirect_to '/sign_up', alert: "information missing, passwords must be a min 5 characters"
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
