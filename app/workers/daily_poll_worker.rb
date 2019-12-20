class DailyPollWorker < ApplicationWorker
  def perform
    User.pluck(:id).each { |id| PollFoursquareWorker.perform_async(id) }
  end
end
