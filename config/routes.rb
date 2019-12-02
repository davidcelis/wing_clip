Rails.application.routes.draw do
  namespace :oauth do
    get 'foursquare/authenticate'
    get 'foursquare/callback'
  end
end
