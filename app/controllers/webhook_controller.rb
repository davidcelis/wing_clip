class WebhookController < ApplicationController
  def hook
    if CheckIn.exists?(foursquare_id: foursquare_check_in.id)
      head :ok
    else
      check_in = CheckIn.create!(
        user_id:       user.id,
        foursquare_id: foursquare_check_in.id,
        message:       foursquare_check_in.message,
        venue:         foursquare_check_in.venue,
        address:       foursquare_check_in.address,
        coordinates:   foursquare_check_in.coordinates,
        mayor:         foursquare_check_in.mayor?,
        created_at:    foursquare_check_in.created_at,
      )

      head :created
    end
  end

  private

  def foursquare_check_in
    @foursquare_check_in ||= Foursquare::CheckIn.new(params[:checkin])
  end

  def user
    @user ||= User.find_by(foursquare_id: params[:checkin][:user][:id])
  end
end
