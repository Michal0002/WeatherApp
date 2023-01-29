source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.4"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'openweather2'
gem 'open-weather-ruby-client'
gem 'geocoder', '~> 1.8', '>= 1.8.1'
gem 'typeahead-rails'
gem 'httparty', '~> 0.21.0'
gem "webpacker"
gem 'jquery-rails', '~> 4.5', '>= 4.5.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
