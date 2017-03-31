Rails.application.routes.draw do
  resources :beers
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :breweries
        end
  end
end
