require 'google/apis/calendar_v3'
require 'google/apis/oauth2_v2'

module GoogleHelper
  AUTHORIZATION_URI = 'https://accounts.google.com/o/oauth2/auth'.freeze
  TOKEN_CREDENTIAL_URI = 'https://accounts.google.com/o/oauth2/token'.freeze

  CALENDAR_NAME = 'Swarm Check-ins'.freeze
  CALENDAR_DESCRIPTION = "Where I've been and when. Synced via https://wingclip.app".freeze

  def google_client_options
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
