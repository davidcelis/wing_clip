require 'rails_helper'

RSpec.describe CheckIn, type: :model do
  context 'on creation' do
    it 'queues the creation of a calendar event' do
      user = User.create!(
        foursquare_id: 8302351,
        foursquare_name: 'David Celis',
        foursquare_email: 'me@davidcel.is'
      )
      expect {
        user.check_ins.create!(foursquare_id: "606ddf9f3507ba5fc1d40658", venue: "Covid-19 Vaccination Center")
      }.to change {
        CreateEventWorker.jobs.size
      }.by(1)
    end
  end
end
