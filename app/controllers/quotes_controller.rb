class QuotesController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :set_quote, only: %i[ show edit update destroy ]
  
  # this code needed to get our API helper working and accessible where needed
  require "api_helper"
  include ApiHelper
  
  # GET /quotes or /quotes.json
  def index
    # @quotes = Quote.all
    @weather = weather_api
    @tolkien = tolkien_random_api
    @tolkien_character = tolkien_character_api
  end

  def tolkien
    @tolkien = tolkien_random_api
    render json: @tolkien
  end

  def tolkien_character
    @tolkien_character = tolkien_character_api(params[:name])
    render json: @tolkien_character
  end
  
  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes or /quotes.json
  def create
    @quote = Quote.new(quote_params)
  
    respond_to do |format|
      if @quote.save
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully created." }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully updated." }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_url, notice: "Quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:quote_content, :quote_author, :quote_image)
    end

    #-- Favorites --
    def all_favorites
      @favorite_quotes = User.all_favorites
    end
    
    def toggle_favorite
    
      @quote = Quote.find_by(id: params[:id])
      current_user.favorited?(@quote)  ? current_user.unfavorite(@quote) : current_user.favorite(@quote)
  
    end
end
