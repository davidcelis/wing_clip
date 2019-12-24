class CheckIn < ApplicationRecord
  belongs_to :user

  after_create :create_event

  def venue_emoji
    Foursquare::VenueEmoji.from_category_id(category_id)
  end

  private

  def create_event
    CreateEventWorker.perform_async(id)
  end
end
