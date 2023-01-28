require 'openweather2'

Openweather2.configure do |config|
    config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
    config.apikey = '787c0a5f0ae4031bcdaec058cd2e5e2f'
  end