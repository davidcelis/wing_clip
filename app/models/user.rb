class User < ApplicationRecord
  include HasEncryptedAttributes

  encrypted_attribute :foursquare_token
end
