module Foursquare
  class User
    # The user's unique ID
    attr_reader :id

    # The user's full name
    attr_reader :name

    # The user's email address
    attr_reader :email

    def initialize(attributes)
      @id = attributes['id']
      @name = [attributes['firstName'], attributes['lastName']].compact.join(' ')
      @email = attributes.dig('contact', 'email')
    end
  end
end
