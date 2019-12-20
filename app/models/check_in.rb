class CheckIn < ApplicationRecord
  belongs_to :user

  after_create :create_event

  private

  def create_event
    CreateEventWorker.perform_async(id)
  end
end
