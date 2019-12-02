class OAuth::FoursquareController < ApplicationController
  OAUTH_URL = 'https://foursquare.com/oauth2/authenticate'.freeze

  def authenticate
    uri = URI(OAUTH_URL)
    uri.query = {
      client_id: Rails.application.credentials.dig(:foursquare, :client_id),
      response_type: 'code',
      redirect_uri: callback_url
    }.to_query

    redirect_to uri.to_s
  end

  def callback
    access_token = Foursquare::Client.exchange_authorization_code(params[:code], redirect_to: callback_url)
    foursquare_user = Foursquare::Client.new(token: access_token).user

    user = User.find_or_initialize_by(foursquare_id: foursquare_user.id)
    user.assign_attributes(foursquare_name: foursquare_user.name, foursquare_email: foursquare_user.email)
    user.save!
  end

  private

  def callback_url
    oauth_foursquare_callback_url
  end
end
