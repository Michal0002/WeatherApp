class WeatherController < ApplicationController
    require 'openweather2'

    def weather
        @location =  params[:location]
        client = OpenWeather::Client.new(
            api_key: "787c0a5f0ae4031bcdaec058cd2e5e2f"
          )
          weather = client.current_city(@location)
          @temperature = weather.main.temp_max_c

          @wind = weather.wind.speed
          @icon = weather.icon_url

    end

    
end
