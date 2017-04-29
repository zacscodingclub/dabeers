Rails.application.routes.draw do
  resources :applications
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :breweries
      resources :beers
    end
  end
end
