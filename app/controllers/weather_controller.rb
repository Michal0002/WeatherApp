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
                cities = fetch_cities_by_name(@location)

                # coordinates = Geocoder.coordinates(@location)
                client = OpenWeather::Client.new(api_key:"787c0a5f0ae4031bcdaec058cd2e5e2f")
                weather = client.current_city(@location)

                @temperature = weather.main.temp_max_c.round(1) 
                @wind = weather.wind.speed
                @presure = weather.main.pressure 


            rescue Faraday::ResourceNotFound => e
                flash[:error] = "Location not found. Please enter a valid location"
              end
         end
    end
    def fetch_cities_by_name(name)
        # fetch the cities based on the name entered
        # return the cities as an array
        cities = ["New York", "Los Angeles", "Chicago", "Houston"]
        cities.select { |city| city.downcase.start_with?(name.downcase) }
      end
end