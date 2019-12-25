class CreateEventWorker < ApplicationWorker
  include Rails.application.routes.url_helpers
  include GoogleHelper

  def perform(id)
    @check_in_id = id

    event = Google::Apis::CalendarV3::Event.new(
      summary: "#{check_in.venue_emoji} #{check_in.venue}#{' 👑' if check_in.mayor?}",
      description: description,
      start: Google::Apis::CalendarV3::EventDateTime.new(date_time: check_in.created_at.rfc3339),
      end: Google::Apis::CalendarV3::EventDateTime.new(date_time: check_in.created_at.rfc3339),
      location: (check_in.address.presence || check_in.coordinates.to_a.join(',')),
      source: Google::Apis::CalendarV3::Event::Source.new(title: 'WingClip', url: root_url),
      transparency: 'transparent',
      guests_can_invite_others: false,
    )
    event = calendar_service.insert_event(user.google_calendar_id, event)

    check_in.update!(google_event_id: event.id)
  rescue Google::Apis::AuthorizationError
    response = google_client.refresh!
    user.google_credentials = user.google_credentials.merge(response)
    user.save!

    raise
  end

  private

  def check_in
    @check_in ||= CheckIn.find(@check_in_id)
  end

  def summary
    parts = [check_in.venue_emoji, check_in.venue]
    parts << '👑' if check_in.mayor?
    parts.join('')
  end

  def description
    return check_in.message unless check_in.event?

    "I checked in for #{check_in.event}!"
  end

  def user
    @user ||= check_in.user
  end

  def google_client
    @google_client ||= Signet::OAuth2::Client.new(google_client_options).tap do |client|
      client.update!(user.google_credentials)
    end
  end

  def calendar_service
    @calendar_service ||= Google::Apis::CalendarV3::CalendarService.new.tap do |service|
      service.authorization = google_client
    end
  end

  def self.default_url_options
    Rails.application.config.x.sidekiq.default_url_options
  end
end
