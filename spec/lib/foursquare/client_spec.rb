require 'rails_helper'

RSpec.describe Foursquare::Client do
  let(:api_token) { 'FOURSQUARE_API_TOKEN' }
  let(:client) { Foursquare::Client.new(token: api_token) }

  describe '.exchange_authorization_code' do
    let(:code) { 'FOURSQUARE_AUTHORIZATION_CODE' }
    let(:redirect_uri) { Rails.application.routes.url_helpers.oauth_foursquare_callback_url(host: 'test.host') }

    it 'asks Foursquare for an access token using an authoriation code' do
      VCR.use_cassette('foursquare_authorization_code_exchange') do
        token = Foursquare::Client.exchange_authorization_code(code, redirect_to: redirect_uri)

        expect(token).to eq(api_token)
      end
    end
  end

  it 'can retrieve the current user' do
    VCR.use_cassette('foursquare_current_user') do
      expect(client.user).to be_a(Foursquare::User)
    end
  end

  it 'can retrieve check-ins for the current user' do
    VCR.use_cassette('foursquare_list_check_ins', match_requests_on: [:method, VCR.request_matchers.uri_without_param(:beforeTimestamp)]) do
      check_ins = client.check_ins

      expect(check_ins.size).to eq(250)
      expect(check_ins).to all(be_a(Foursquare::CheckIn))
    end
  end
end
