require 'rails_helper'

RSpec.describe SyncCheckInsWorker, type: :worker do
  let(:worker) { SyncCheckInsWorker.new }

  let(:user) do
    User.create!(
      foursquare_id: 8302351,
      foursquare_name: 'David Celis',
      foursquare_email: 'me@davidcel.is',
      foursquare_token: 'FOURSQUARE_API_TOKEN'
    )
  end

  before do
    # Create the most recent check-in; we'll assert we created everything before it
    user.check_ins.create!(
      foursquare_id: '606ddf9f3507ba5fc1d40658',
      venue: 'Covid-19 Vaccination Center',
      message: '💉',
      address: 'Portland, OR 97232',
      coordinates: [45.529565, -122.662628],
      category_id: '4bf58dd8d48988d104941735',
      created_at: Time.at(1617813407),
    )
  end

  it 'syncs the latest check-ins for a user' do
    VCR.use_cassette('foursquare_sync_worker') do
      expect {
        worker.perform(user.id, 1617813407)
      }.to change {
        CheckIn.count
      }.by(249)
    end
  end

  it 'does nothing if we are up-to-date' do
    VCR.use_cassette('foursquare_sync_worker', allow_playback_repeats: true, match_requests_on: [:method, VCR.request_matchers.uri_without_param(:beforeTimestamp)]) do
      # Perform a first sync
      worker.perform(user.id, 1617813407)

      # We should now have 250 check-ins and not create any more.
      expect { worker.perform(user.id, CheckIn.last.created_at.to_i + 1) }.not_to change { CheckIn.count }
    end
  end
end
