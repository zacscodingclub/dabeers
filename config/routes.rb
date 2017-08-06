Rails.application.routes.draw do
  scope module: :v1,  defaults: { format: 'json' } do
    resources :applications
    resources :breweries
    resources :beers
  end
end
