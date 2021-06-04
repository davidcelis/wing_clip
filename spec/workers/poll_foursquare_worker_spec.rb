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
      foursquare_id: '5fea5ffd7acccf2dda2ea304',
      venue: 'The Knoll Open Space',
      address: 'Lincoln City, OR',
      coordinates: [45.017845, -124.00157],
      category_id: '4bf58dd8d48988d163941735',
      created_at: Time.at(1609195517),
    )
  end

  it 'syncs the latest check-ins for a user' do
    VCR.use_cassette('foursquare_poll_worker') do
      expect {
        worker.perform(user.id)
      }.to change {
        CheckIn.count
      }.by(249)
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
