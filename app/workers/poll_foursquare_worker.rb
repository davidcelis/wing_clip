class PollFoursquareWorker < ApplicationWorker
  def perform(user_id)
    user = User.find(user_id)
    latest_check_in = user.check_ins.last
    return unless latest_check_in

    client = Foursquare::Client.new(token: user.foursquare_token)

    foursquare_check_ins = client.check_ins(after: latest_check_in.created_at.to_i)
    foursquare_check_ins.each do |foursquare_check_in|
      next if CheckIn.exists?(foursquare_id: foursquare_check_in.id)

      check_in = CheckIn.create!(
        user_id:       user.id,
        foursquare_id: foursquare_check_in.id,
        message:       foursquare_check_in.message,
        venue:         foursquare_check_in.venue,
        event:         foursquare_check_in.event,
        category_id:   foursquare_check_in.category_id,
        address:       foursquare_check_in.address,
        coordinates:   foursquare_check_in.coordinates,
        mayor:         foursquare_check_in.mayor?,
        created_at:    foursquare_check_in.created_at,
      )
    end

    # If there are more... do another.
    self.class.perform_async(user_id) if foursquare_check_ins.length == Foursquare::Client::CHECK_IN_LIMIT
  end
end
