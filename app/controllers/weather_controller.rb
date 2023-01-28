class WeatherController < ApplicationController
    def weather
        @location =  params[:location]
        if @location.empty?
            flash[:error] = "Please enter a location."
        else
            begin
                coordinates = Geocoder.coordinates(@location)
                client = OpenWeather::Client.new(api_key:"787c0a5f0ae4031bcdaec058cd2e5e2f")
                weather = client.current_city(@location)
                @temperature = weather.main.temp_max_c
                @wind = weather.wind.speed
            rescue Faraday::ResourceNotFound => e
                flash[:error] = "Location not found. Please enter a valid location"
              end
            end
        end
    end
