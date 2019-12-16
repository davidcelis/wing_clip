module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(foursquare_id: cookies.encrypted[:foursquare_id])
  end
end
