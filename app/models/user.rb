class User < ApplicationRecord
  # Deleted automatically via the `ON CASCADE DELETE` foreign key declaration
  has_many :check_ins

  include HasEncryptedAttributes
  encrypted_attribute :foursquare_token
  encrypted_attribute :google_credentials, JSON
end
