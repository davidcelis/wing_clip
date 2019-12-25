class WebhookController < ApplicationController
  WEBHOOK_SECRET = Rails.application.credentials.dig(:foursquare, :webhook_secret).freeze

  skip_before_action :verify_authenticity_token
  before_action :verify_webhook_secret
  before_action :parse_json_params

  def hook
    if CheckIn.exists?(foursquare_id: foursquare_check_in.id)
      head :ok
    else
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

      head :created
    end
  end

  private

  def foursquare_check_in
    @foursquare_check_in ||= Foursquare::CheckIn.new(params[:checkin])
  end

  def user
    @user ||= User.find_by(foursquare_id: params[:user][:id])
  end

  def parse_json_params
    params[:checkin] = JSON.parse(params[:checkin]).with_indifferent_access
    params[:user]    = JSON.parse(params[:user]).with_indifferent_access
  end

  def verify_webhook_secret
    head :unauthorized unless Rack::Utils.secure_compare(params[:secret], WEBHOOK_SECRET)
  end
end
