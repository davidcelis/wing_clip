require 'rails_helper'

RSpec.describe OAuth::FoursquareController, type: :controller do
  describe '/authenticate' do
    let(:client_id) { Rails.application.credentials.dig(:foursquare, :client_id) }
    let(:redirect_uri) { oauth_foursquare_callback_url }
    let(:redirect_params) { { client_id: client_id, response_type: 'code', redirect_uri: redirect_uri }.to_query }

    it 'redirects to Foursquare' do
      get :authenticate

      expect(response).to redirect_to("https://foursquare.com/oauth2/authenticate?#{redirect_params}")
    end
  end

  describe '/callback' do
    it 'creates a new User' do
      VCR.use_cassette('foursquare_oauth_callback') do
        expect {
          post :callback, params: { code: 'FOURSQUARE_AUTHORIZATION_CODE' }
        }.to change {
          User.count
        }.from(0).to(1)
      end

      expect(response).to redirect_to(root_url)

      user = User.first
      expect(user.foursquare_id).to eq(8302351)
      expect(user.foursquare_name).to eq("David Celis")
      expect(user.foursquare_email).to eq("me@davidcel.is")
    end

    it 'updates a User who has already authenticated before' do
      user = User.create!(
        foursquare_id: 8302351,
        foursquare_name: 'Not David',
        foursquare_email: 'old.email@davidcel.is'
      )

      VCR.use_cassette('foursquare_oauth_callback') do
        expect {
          post :callback, params: { code: 'FOURSQUARE_AUTHORIZATION_CODE' }
        }.not_to change {
          User.count
        }
      end

      user.reload
      expect(user.foursquare_name).to eq("David Celis")
      expect(user.foursquare_email).to eq("me@davidcel.is")
    end
  end
end
