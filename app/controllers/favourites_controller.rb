class FavouritesController < ApplicationController
  def show
    @favorite = Favorite.all
  end
end
