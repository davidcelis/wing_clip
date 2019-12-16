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
end
