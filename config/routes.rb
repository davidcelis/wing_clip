Rails.application.routes.draw do
  root to: 'home#index'

  post 'hook', to: 'webhook#hook'

  namespace :oauth do
    get 'foursquare/authenticate'
    get 'foursquare/callback'

    get 'google/authenticate'
    get 'google/callback'
  end
end
