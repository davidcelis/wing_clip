class ApplicationController < ActionController::Base
  def signed_in_with_foursquare?
    !!cookies.encrypted[:foursquare_id]
  end
  helper_method :signed_in_with_foursquare?

  def signed_in_with_google?
    return unless signed_in_with_foursquare?

    current_user.google_credentials?
  end
  helper_method :signed_in_with_google?

  def current_user
    @current_user ||= User.find_by(foursquare_id: cookies.encrypted[:foursquare_id])
  end
  helper_method :current_user

  def google_oauth_client
    @google_oauth_client ||= Signet::OAuth2::Client.new(helpers.google_client_options)
  end

  def google_oauth_service
    @google_oauth_service ||= Google::Apis::Oauth2V2::Oauth2Service.new
  end

  def google_calendar_service
    @google_calendar_service ||= Google::Apis::CalendarV3::CalendarService.new.tap do |service|
      service.authorization = google_oauth_client
    end
  end
end
