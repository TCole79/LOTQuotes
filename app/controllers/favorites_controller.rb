class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    user = User.find_by(id: session[:user_id] )
    
    if user 
      @favorite_quotes = user.all_favorites
    end  
  end

end
