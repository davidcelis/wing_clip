require 'rails_helper'

RSpec.describe OAuth::GoogleController, type: :controller do
  describe '/authenticate' do
    let(:client_id) { Rails.application.credentials.dig(:google, :client_id) }
    let(:client_secret) { Rails.application.credentials.dig(:google, :client_secret) }
    let(:redirect_uri) { oauth_google_callback_url }

    context 'without an authenticated user' do
      it 'redirects to the root url' do
        get :authenticate

        expect(response).to redirect_to(root_url)
        expect(flash[:error]).to eq('You must log in with Foursquare before logging in with Google')
      end
    end

    context 'with an authenticated user' do
      let(:user) do
        User.create!(
          foursquare_id: 8302351,
          foursquare_name: 'David Celis',
          foursquare_email: 'me@davidcel.is'
        )
      end

      before do
        allow(@controller).to receive(:current_user).and_return(user)
      end

      it 'redirects to Google' do
        get :authenticate

        # Google doesn't CGI escape the URLs in their auth params
        expect(response).to redirect_to("https://accounts.google.com/o/oauth2/auth?access_type=offline&client_id=#{client_id}&prompt=consent&redirect_uri=#{redirect_uri}&response_type=code&scope=https://www.googleapis.com/auth/userinfo.profile%20https://www.googleapis.com/auth/userinfo.email%20https://www.googleapis.com/auth/calendar")
      end
    end
  end

  describe '/callback' do
    context 'without an authenticated user' do
      it 'redirects to the root url' do
        post :callback, params: { code: 'GOOGLE_AUTHORIZATION_CODE' }

        expect(response).to redirect_to(root_url)
        expect(flash[:error]).to eq('You must log in with Foursquare before logging in with Google')
      end
    end

    context 'with an authenticated user' do
      let(:user) do
        User.create!(
          foursquare_id: 8302351,
          foursquare_name: 'David Celis',
          foursquare_email: 'me@davidcel.is'
        )
      end

      before do
        allow(@controller).to receive(:current_user).and_return(user)
      end

      it 'stores the Google credentials for the user, creates a calendar, and syncs check-ins' do
        VCR.use_cassette('google_oauth_callback_with_calendar_creation') do
          post :callback, params: { code: 'GOOGLE_AUTHORIZATION_CODE' }
        end

        expect(response).to redirect_to(root_url)
        expect(flash[:error]).not_to be_present

        user.reload
        expect(user.google_calendar_id).to eq('c_23vircoo1kib3tu872gubgu4v8@group.calendar.google.com')
        expect(SyncCheckInsWorker.jobs.size).to eq(1)
      end

      context 'that already has a calendar and is logging in again' do
        before do
          user.update!(google_calendar_id: 'c_23vircoo1kib3tu872gubgu4v8@group.calendar.google.com')
        end

        it 'does not attempt to create a new calendar' do
          expect(@controller).not_to receive(:create_calendar)

          VCR.use_cassette('google_oauth_callback') do
            post :callback, params: { code: 'GOOGLE_AUTHORIZATION_CODE' }
          end

          expect(SyncCheckInsWorker.jobs).to be_empty
        end
      end
    end
  end
end
