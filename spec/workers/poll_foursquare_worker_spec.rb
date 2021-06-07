require 'rails_helper'

RSpec.describe PollFoursquareWorker, type: :worker do
  let(:worker) { PollFoursquareWorker.new }

  let(:user) do
    User.create!(
      foursquare_id: 8302351,
      foursquare_name: 'David Celis',
      foursquare_email: 'me@davidcel.is',
      foursquare_token: 'FOURSQUARE_API_TOKEN'
    )
  end

  before do
    # Create the last check-in; we'll assert we created everything after it
    user.check_ins.create!(
      foursquare_id: '600c6b3311a9f418c2f8c330',
      venue: 'Quest Diagnostics',
      address: '2351 NW Westover Rd Ste R250, Portland, OR 97210',
      coordinates: [45.524635, -122.70062],
      category_id: '4bf58dd8d48988d163941735',
      created_at: Time.at(1611426611),
    )
  end

  it 'syncs the latest check-ins for a user' do
    VCR.use_cassette('foursquare_poll_worker') do
      expect {
        worker.perform(user.id)
      }.to change {
        CheckIn.count
      }.by(4)
    end
  end

  it 'does nothing if we are up-to-date' do
    VCR.use_cassette('foursquare_poll_worker', allow_playback_repeats: true, match_requests_on: [:method, VCR.request_matchers.uri_without_param(:afterTimestamp)]) do
      # Perform a first sync
      worker.perform(user.id)

      # We should now have 250 check-ins and not create any more.
      expect { worker.perform(user.id) }.not_to change { CheckIn.count }
    end
  end
end
