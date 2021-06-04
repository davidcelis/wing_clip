module Foursquare
  class Error < RuntimeError
    attr_reader :type, :message, :detail

    def initialize(response)
      body = JSON.parse(response.body)

      # The names here may seem swapped, but 'errorDetail' is information meant
      # for the developer while 'errorMessage' is a more human-readable
      # representation meant for the end-user. We want what's logged (@message)
      # to be the detailed information, and we'll display @detail to the user.
      @message = body.dig('meta', 'errorDetail') { 'no detail provided' }
      @detail  = body.dig('meta', 'errorMessage') { 'Something went wrong. Please bear with us as we look into it.' }
      @type    = body.dig('meta', 'errorType') { 'unknown' }
    end
  end
end
