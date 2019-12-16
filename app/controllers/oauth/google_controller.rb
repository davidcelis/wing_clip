require 'google/apis/calendar_v3'
require 'google/apis/oauth2_v2'

class OAuth::GoogleController < ApplicationController
  AUTHORIZATION_URI = 'https://accounts.google.com/o/oauth2/auth'.freeze
  TOKEN_CREDENTIAL_URI = 'https://accounts.google.com/o/oauth2/token'.freeze

  def authenticate
    client = Signet::OAuth2::Client.new(client_options)

    redirect_to client.authorization_uri.to_s
  end

  def callback
    client      = Signet::OAuth2::Client.new(client_options)
    client.code = params[:code]
    response    = client.fetch_access_token!

    current_user.assign_attributes(
      google_id_token:      response['id_token'],
      google_access_token:  response['access_token'],
      google_refresh_token: response['refresh_token'],
    )

    service  = Google::Apis::Oauth2V2::Oauth2Service.new
    response = service.tokeninfo(access_token: response['access_token'], id_token: response['id_token'])

    current_user.google_email_address = response.email
    current_user.save!

    redirect_to root_url
  end

  private

  def client_options
    {
      client_id: Rails.application.credentials.dig(:google, :client_id),
      client_secret: Rails.application.credentials.dig(:google, :client_secret),
      authorization_uri: AUTHORIZATION_URI,
      token_credential_uri: TOKEN_CREDENTIAL_URI,
      scope: [
        Google::Apis::Oauth2V2::AUTH_USERINFO_PROFILE,
        Google::Apis::Oauth2V2::AUTH_USERINFO_EMAIL,
        Google::Apis::CalendarV3::AUTH_CALENDAR
      ],
      redirect_uri: oauth_google_callback_url,
      additional_parameters: { prompt: 'consent' }
    }
  end
end
