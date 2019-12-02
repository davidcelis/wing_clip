module Foursquare
  class Client
    TOKEN_URL = 'https://foursquare.com/oauth2/access_token'.freeze
    API_URL   = 'https://api.foursquare.com/v2'.freeze
    VERSION   = 20191201

    def self.exchange_authorization_code(code, redirect_to:)
      params = {
        client_id:     Rails.application.credentials.dig(:foursquare, :client_id),
        client_secret: Rails.application.credentials.dig(:foursquare, :client_secret),
        grant_type:    'authorization_code',
        redirect_uri:  redirect_to,
        code:          code,
      }

      response = HTTP.get(TOKEN_URL, params: params)
      body     = response.parse

      body['access_token']
    end

    def initialize(token:)
      @token = token
    end

    def user
      response = get("#{API_URL}/users/self", params: default_params)
      body = response.parse

      Foursquare::User.new(body.dig('response', 'user'))
    end

    def check_ins(limit: 250, offset: 0)
      params = default_params.merge(
        limit:  limit,
        offset: offset,
        sort:   'oldestfirst',
      )

      response = get("#{API_URL}/users/self/checkins", params: params)

      body = response.parse

      body.dig('response', 'checkins', 'items').map { |item| Foursquare::CheckIn.new(item) }
    end

    private

    def get(url, options)
      response = HTTP.get(url, options)

      raise Foursquare::Error.new(response) unless response.status.success?

      response
    end

    def default_params
      {
        oauth_token: @token,
        v: VERSION,
      }
    end
  end
end
