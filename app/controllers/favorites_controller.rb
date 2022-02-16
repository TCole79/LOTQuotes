class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  
  def index
    @favorite_quotes = user.all_favorites
  end
  
  def toggle_favorite
    
    @quote = Quote.find_by(id: params[:id])
    current_user.favorited?(@quote)  ? current_user.unfavorite(@quote) : current_user.favorite(@quote)

  end
end
