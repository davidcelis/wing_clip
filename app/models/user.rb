class User < ApplicationRecord
  include HasEncryptedAttributes

  encrypted_attribute :foursquare_token
  encrypted_attribute :google_credentials, JSON
end
