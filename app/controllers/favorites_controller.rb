class FavoritesController < ApplicationController
  def index
    @favorites = Favorites.all
  end
end
