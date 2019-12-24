class AdminConstraint
  def matches?(request)
    request.cookie_jar.encrypted[:foursquare_id] == 8302351
  end
end
