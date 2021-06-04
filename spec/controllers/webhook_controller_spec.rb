require 'rails_helper'

RSpec.describe WebhookController, type: :controller do
  describe 'hook' do
    let(:check_in_json) { File.read('spec/fixtures/foursquare/check_in.json') }
    let(:user_json) { File.read('spec/fixtures/foursquare/user.json') }
    let(:params) { { checkin: check_in_json, user: user_json, secret: WebhookController::WEBHOOK_SECRET } }

    before do
      @user = User.create!(
        foursquare_id: 8302351,
        foursquare_name: 'David Celis',
        foursquare_email: 'me@davidcel.is'
      )
    end

    context 'with an invalid webhook secret' do
      it 'is unauthorized' do
        post :hook, params: { secret: 'nope' }

        expect(response).to be_unauthorized
      end
    end

    it 'syncs the check in to our database and queues the creation of a calendar event' do
      expect {
        post :hook, params: params
      }.to change {
        CheckIn.count
      }.from(0).to(1)

      check_in = CheckIn.last
      expect(check_in.user_id).to eq(@user.id)
      expect(check_in.foursquare_id).to eq("606ddf9f3507ba5fc1d40658")
      expect(check_in.message).to eq("💉")
      expect(check_in.venue).to eq("Covid-19 Vaccination Center")
      expect(check_in.event).to be_nil
      expect(check_in.category_id).to eq("4bf58dd8d48988d104941735")
      expect(check_in.address).to eq("Portland, OR 97232")
      expect(check_in.coordinates.x).to eq(45.529565)
      expect(check_in.coordinates.y).to eq(-122.662628)
      expect(check_in).not_to be_mayor

      expect(CreateEventWorker.jobs.size).to eq(1)
    end

    it 'ignores events we have already synced' do
      CheckIn.create!(user_id: @user.id, foursquare_id: "606ddf9f3507ba5fc1d40658", venue: "Covid-19 Vaccination Center")
      CreateEventWorker.jobs.clear

      expect { post :hook, params: params }.not_to change { CheckIn.count }

      expect(CreateEventWorker.jobs).to be_empty
    end
  end
end
