class WeatherController < ApplicationController
    def index

    end
    
    def weather
        
        @location = params[:location] || "Warsaw" #location is empty then return Warsaw 
        if @location.empty?
            flash[:error] = "Please enter a location."
            flash.discard
         else
            begin
                # coordinates = Geocoder.coordinates(@location)
                client = OpenWeather::Client.new(api_key:"787c0a5f0ae4031bcdaec058cd2e5e2f")
                weather = client.current_city(@location)
                @weather_description = weather['weather'][0]["main"]
                @temperature = weather.main.temp_c.round(1)
                @temp_feels = weather.main.feels_like_c.round(1)
                @temp_min = weather.main.temp_min_c.round(1)
                @temp_max = weather.main.temp_max_c.round(1)
                @icon_code = weather["weather"][0]["icon"]
                @icon_url = "http://openweathermap.org/img/wn/#{@icon_code}@2x.png"
                @wind = weather.wind.speed
                @presure = weather.main.pressure


            rescue Faraday::ResourceNotFound => e
                flash[:error] = "Location not found. Please enter a valid location"
              end
         end
    end

    def suggestions
    suggestions = Geocoder.search(params[:location]).map(&:city)
    render json: suggestions
    end
      
    
end