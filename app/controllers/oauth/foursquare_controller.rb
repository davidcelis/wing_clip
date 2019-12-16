class OAuth::FoursquareController < ApplicationController
  OAUTH_URL = 'https://foursquare.com/oauth2/authenticate'.freeze

  def authenticate
    uri = URI(OAUTH_URL)
    uri.query = {
      client_id: Rails.application.credentials.dig(:foursquare, :client_id),
      response_type: 'code',
      redirect_uri: oauth_foursquare_callback_url
    }.to_query

    redirect_to uri.to_s
  end

  def callback
    access_token    = Foursquare::Client.exchange_authorization_code(params[:code], redirect_to: oauth_foursquare_callback_url)
    foursquare_user = Foursquare::Client.new(token: access_token).user

    user = User.find_or_initialize_by(foursquare_id: foursquare_user.id)
    user.update!(
      foursquare_token: access_token,
      foursquare_name: foursquare_user.name,
      foursquare_email: foursquare_user.email
    )

    cookies.encrypted.permanent[:foursquare_id] = user.foursquare_id

    redirect_to root_url
  end
end
