module Foursquare
  class CheckIn
    # Foursquare's unique identifier for this check-in
    attr_reader :id

    # The comment the user left when checking in, if present
    attr_reader :message

    # The name of the location that was checked into
    attr_reader :venue

    # The event that the user checked into, if for an event
    attr_reader :event

    # The venue's primary category
    attr_reader :category_id

    # The address of the venue
    attr_reader :address

    # The coordinates, which will be used in the absence of an address
    attr_reader :coordinates

    # Whether or not the user was mayor when they checked in
    attr_reader :mayor
    alias_method :mayor?, :mayor

    # When the user checked in
    attr_reader :created_at

    def initialize(attributes)
      @id          = attributes['id']
      @message     = attributes['shout']
      @venue       = attributes.dig('venue', 'name')
      @event       = attributes.dig('event', 'name')
      @address     = attributes.dig('venue', 'location', 'formattedAddress').join(', ')
      @latitude    = attributes.dig('venue', 'location', 'lat')
      @longitude   = attributes.dig('venue', 'location', 'lng')
      @coordinates = [@latitude, @longitude]
      @mayor       = !!attributes['isMayor']
      @created_at  = Time.zone.at(attributes['createdAt'])

      primary_category = attributes.dig('venue', 'categories').find { |c| c['primary'] == true }
      @category_id = primary_category['id'] if primary_category.present?
    end
  end
end
