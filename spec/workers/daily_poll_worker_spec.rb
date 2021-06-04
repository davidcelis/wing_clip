require 'rails_helper'

RSpec.describe DailyPollWorker, type: :worker do
  let(:worker) { DailyPollWorker.new }

  before do
    # Create three users so we can assert a PollFoursquareWorker job is created for each
    3.times do |id|
      User.create!(
        foursquare_id: id,
        foursquare_name: 'David Celis',
        foursquare_email: 'me@davidcel.is'
      )
    end
  end

  it 'spiders out and queues a PollFoursquareWorker job for each user' do
    expect { worker.perform }.to change { PollFoursquareWorker.jobs.size }.by(3)
  end
end
