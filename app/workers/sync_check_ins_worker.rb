class SyncCheckInsWorker < ApplicationWorker
  def perform(user_id, before)
    user = User.find(user_id)
    client = Foursquare::Client.new(token: user.foursquare_token)

    foursquare_check_ins = client.check_ins(before: before)
    foursquare_check_ins.each do |foursquare_check_in|
      next if CheckIn.exists?(foursquare_id: foursquare_check_in.id)

      check_in = CheckIn.create!(
        user_id:       user.id,
        foursquare_id: foursquare_check_in.id,
        message:       foursquare_check_in.message,
        venue:         foursquare_check_in.venue,
        category_id:   foursquare_check_in.category_id,
        address:       foursquare_check_in.address,
        coordinates:   foursquare_check_in.coordinates,
        mayor:         foursquare_check_in.mayor?,
        created_at:    foursquare_check_in.created_at,
      )
    end

    # Keep going until we reach the end.
    if foursquare_check_ins.length == Foursquare::Client::CHECK_IN_LIMIT
      SyncCheckInsWorker.perform_async(user.id, foursquare_check_ins.last.created_at.to_i + 1)
    end
  end
end
