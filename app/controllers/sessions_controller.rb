class SessionsController < ApplicationController
  
  def index
  end
  
  def new
    user = User.new
  end

  def create
    user = User.find_by(email: params[:email])

    if user.present? && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to root_path
    else
      redirect_to '/sign_in', warning: "Please fill out all fields"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
