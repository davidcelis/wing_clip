class CreateCheckIns < ActiveRecord::Migration[6.0]
  def change
    create_table :check_ins do |t|
      t.references :user,          foreign_key: { on_delete: :cascade }
      t.text       :foursquare_id, null: false
      t.text       :google_event_id
      t.text       :message
      t.text       :venue,         null: false
      t.text       :category_id
      t.text       :address
      t.point      :coordinates
      t.boolean    :mayor,         null: false, default: false

      t.timestamps

      t.index :foursquare_id, unique: true
      t.index :google_event_id
    end
  end
end
