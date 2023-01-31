Rails.application.routes.draw do
  root 'weather#index'
  get '/weather', to: 'weather#weather'
  get '/suggestions', to: 'weather#suggestions'
end
