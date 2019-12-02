module Foursquare
  class CheckIn
    # The comment the user left when checking in, if present
    attr_reader :message

    # The name of the location that was checked into
    attr_reader :venue

    # The address of the venue
    attr_reader :address

    # The coordinates, which will be used in the absence of an address
    attr_reader :latitude
    attr_reader :longitude

    # When the user checked in
    attr_reader :created_at

    def initialize(attributes)
      @message    = attributes['shout']
      @venue      = attributes.dig('venue', 'name')
      @address    = attributes.dig('venue', 'location', 'formattedAdress').join(', ')
      @latitude   = attributes.dig('venue', 'location', 'lat')
      @longitude  = attributes.dig('venue', 'location', 'lng')
      @created_at = Time.at(attributes['createdAt'])
    end
  end
end
