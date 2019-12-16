class User < ApplicationRecord
  include HasEncryptedAttributes

  encrypted_attribute :foursquare_token
  encrypted_attribute :google_id_token
  encrypted_attribute :google_access_token
  encrypted_attribute :google_refresh_token
end
