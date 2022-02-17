class AboutController < ApplicationController

  # this code needed to get our API helper working and accessible where needed
  require "api_helper"
  include ApiHelper

  def index      
    @weather = weather_api
  end


    # Tristan below is work in progress
    # def copyToClipboard
    #   Clipboard.copy("Test text")
    #   # puts Clipboard.paste
    # end

end