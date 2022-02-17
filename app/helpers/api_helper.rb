module ApiHelper

  require 'net/http'
  require 'json'

  def weather_api
  # Weather API request code here, using the postcode for MIDDLE EARTH, Maryland USA (20636)
    @weather_url = 'http://api.openweathermap.org/data/2.5/weather?zip=20636&units=metric&appid=24ccd4c1a06e1b000cd56a345d68b988'
    @uri1 = URI(@weather_url)
    @response1 = Net::HTTP.get(@uri1)
    @weather_output = JSON.parse(@response1)
    # checking for empty return results
    if @weather_output.empty?
      @weather_output = "Error"
    else
      @weather_output = @weather_output
    end
  end
  
  def tolkien_random_api 
  # Tolkien API request code here for RANDOM quotes
    @tolkien_url = 'https://tolkien-api.herokuapp.com/Quotes/random'
    @uri2 = URI(@tolkien_url)
    @response2 = Net::HTTP.get(@uri2)
    @tolkien_output = JSON.parse(@response2)
    # checking for empty return results
    if @tolkien_output.empty?
      @tolkien_output = "Error"
    else
      @tolkien_output = @tolkien_output
    end
  end

  def tolkien_character_api 
  # Tolkien API request code here for CHARACTER specific quotes
    @tolkien_url2 = 'https://tolkien-api.herokuapp.com/Quotes/by/Aragorn'
    @uri3 = URI(@tolkien_url2)
    @response3 = Net::HTTP.get(@uri3)
    @tolkien_output2 = JSON.parse(@response3)
    # checking for empty return results
    if @tolkien_output2.empty?
      @tolkien_output2 = "Error"
    else
      @tolkien_output2 = @tolkien_output2
    end
  end
end
