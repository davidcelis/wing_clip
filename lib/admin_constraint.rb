class AdminConstraint
  def matches?(request)
    return false unless request.cookies.encrypted[:foursquare_id]

    user = User.find_by(foursquare_id: request.cookies.encrypted[:foursquare_id])
    user && user.id == 1
  end
end
