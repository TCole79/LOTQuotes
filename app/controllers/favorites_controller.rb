class FavouritesController < ApplicationController
  def index
    @favorites = Favorites.all
  end
end
