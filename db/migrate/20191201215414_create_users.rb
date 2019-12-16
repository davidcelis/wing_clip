class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :foursquare_id
      t.text    :foursquare_name
      t.text    :foursquare_email
      t.text    :encrypted_foursquare_token

      t.text :google_email_address
      t.text :encrypted_google_id_token
      t.text :encrypted_google_access_token
      t.text :encrypted_google_refresh_token

      t.timestamps
    end
  end
end
