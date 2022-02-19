class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, :only => [:create,:inquire_enterprise]
  
  before_action :set_current_user

  add_flash_types :danger, :info, :warning, :success, :messages

  def set_current_user
    if session[:user_id]
     Current.user = User.find_by(id: session[:user_id])   
    end
  end
end
