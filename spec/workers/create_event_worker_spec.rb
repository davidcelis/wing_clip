require 'rails_helper'

RSpec.describe CreateEventWorker, type: :worker do
  let(:worker) { CreateEventWorker.new }

  let(:user) {
    User.create!(
      foursquare_id: 8302351,
      foursquare_name: 'David Celis',
      foursquare_email: 'me@davidcel.is',
      google_calendar_id: 'c_23vircoo1kib3tu872gubgu4v8@group.calendar.google.com',
      google_credentials: {
        'access_token' => 'GOOGLE_ACCESS_TOKEN',
        'expires_in' => 3599,
        'refresh_token' => 'GOOGLE_REFRESH_TOKEN',
        'scope' => 'openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/calendar',
        'token_type' => 'Bearer',
        'id_token' => 'GOOGLE_ID_TOKEN'
      }
    )
  }

  let(:check_in) {
    user.check_ins.create!(
      foursquare_id: "606ddf9f3507ba5fc1d40658",
      message: "💉",
      venue: "Covid-19 Vaccination Center",
      category_id: "4bf58dd8d48988d104941735",
      address: "Portland, OR 97232",
      coordinates: [45.529565, -122.662628],
      mayor: false
    )
  }

  it 'creates a Google Calendar event' do
    VCR.use_cassette('google_create_calendar_event') do
      worker.perform(check_in.id)
    end

    check_in.reload
    expect(check_in.google_event_id).to eq('pla3slggj1pari3cs0qv6eo2kg')
  end
end
