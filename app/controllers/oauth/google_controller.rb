class OAuth::GoogleController < ApplicationController
  AUTHORIZATION_URI = 'https://accounts.google.com/o/oauth2/auth'.freeze
  TOKEN_CREDENTIAL_URI = 'https://accounts.google.com/o/oauth2/token'.freeze

  def authenticate
    redirect_to google_oauth_client.authorization_uri.to_s
  end

  def callback
    google_oauth_client.code = params[:code]
    current_user.google_credentials = google_oauth_client.fetch_access_token!
    current_user.google_email_address = fetch_email

    # Create the user's "Swarm Check-ins calendar"
    calendar = create_calendar
    current_user.google_calendar_id = calendar.id

    current_user.save!

    # SyncCheckInsWorker.perform_async(current_user.id, Time.zone.now.to_i)

    redirect_to root_url
  end

  private

  def fetch_email
    response = google_oauth_service.tokeninfo(
      access_token: current_user.google_credentials['access_token'],
      id_token: current_user.google_credentials['id_token'],
    )

    response.email
  end

  def create_calendar
    calendar = Google::Apis::CalendarV3::Calendar.new(
      summary: GoogleHelper::CALENDAR_NAME,
      description: "When and where I've been. Synced via https://wingclip.app"
    )
    calendar_list_entry = google_calendar_service.insert_calendar(calendar)

    # Now insert the calendar into their list with that signature Swarm orange.
    calendar_list_entry = Google::Apis::CalendarV3::CalendarListEntry.new(
      id: calendar_list_entry.id,
      selected: true,
      background_color: '#ffa633',
      foreground_color: '#ffffff',
    )

    google_calendar_service.insert_calendar_list(calendar_list_entry, color_rgb_format: true)
  end
end
