module FoursquareHelper
  def foursquare_oauth_url
    client_id = Rails.application.credentials.dig(:foursquare, :client_id)
    redirect_uri = oauth_foursquare_callback_url

    "https://foursquare.com/oauth2/authenticate?client_id=#{client_id}&response_type=code&redirect_uri=#{redirect_uri}"
  end

  def signed_in_with_foursquare?
    !!cookies.encrypted[:foursquare_id]
  end
end
