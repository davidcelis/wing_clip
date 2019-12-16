Rails.application.routes.draw do
  root to: 'home#index'

  namespace :oauth do
    get 'foursquare/authenticate'
    get 'foursquare/callback'
  end
end
