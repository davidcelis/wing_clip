module Foursquare
  class Client
    API_URL = 'https://api.foursquare.com/v2'.freeze
    VERSION = 20191201

    def initialize(token:)
      @token = token
    end

    def user
      response = get("#{API_URL}/users/self", params: default_params)
      body = response.body.parse

      Foursquare::User.new(body.dig('response', 'user'))
    end

    def check_ins(limit: 250, offset: 0)
      params = default_params.merge(
        limit:  limit,
        offset: offset,
        sort:   'oldestfirst',
      )

      response = get("#{API_URL}/users/self/checkins", params: params)

      body = response.body.parse

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
