class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :foursquare_id, null: false
      t.text    :foursquare_name
      t.text    :foursquare_email
      t.text    :encrypted_foursquare_token

      t.text :google_email_address
      t.text :encrypted_google_credentials

      t.timestamps

      t.index :foursquare_id,        unique: true
      t.index :google_email_address, unique: true
    end
  end
end
