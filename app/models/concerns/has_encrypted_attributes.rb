module HasEncryptedAttributes
  KEY = ActiveSupport::KeyGenerator.new(
    Rails.application.credentials[:secret_key_base]
  ).generate_key(
    Rails.application.credentials[:encryption_salt],
    ActiveSupport::MessageEncryptor.key_len
  ).freeze

  extend ActiveSupport::Concern

  class_methods do
    def encrypted_attribute(attribute)
      define_method "#{attribute}" do
        return unless self.public_send("encrypted_#{attribute}?")
        return instance_variable_get(:"@#{attribute}") if instance_variable_defined?(:"@#{attribute}")

        value = self.public_send("encrypted_#{attribute}")
        instance_variable_set(:"@#{attribute}", self.class.encryptor.decrypt_and_verify(value))
      end

      define_method "#{attribute}=" do |value|
        if value.present?
          public_send("encrypted_#{attribute}=", self.class.encryptor.encrypt_and_sign(value))
          instance_variable_set(:"@#{attribute}", value)
        else
          public_send("encrypted_#{attribute}=", nil)
          instance_variable_set(:"@#{attribute}", nil)
        end
      end

      define_method("#{attribute}?") { public_send("encrypted_#{attribute}?") }
    end

    def encryptor
      @encryptor ||= ActiveSupport::MessageEncryptor.new(KEY)
    end
  end
end
