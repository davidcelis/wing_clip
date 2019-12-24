# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_16_224234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_ins", force: :cascade do |t|
    t.bigint "user_id"
    t.text "foursquare_id", null: false
    t.text "google_event_id"
    t.text "message"
    t.text "venue", null: false
    t.text "category_id"
    t.text "address"
    t.point "coordinates"
    t.boolean "mayor", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["foursquare_id"], name: "index_check_ins_on_foursquare_id", unique: true
    t.index ["google_event_id"], name: "index_check_ins_on_google_event_id"
    t.index ["user_id"], name: "index_check_ins_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "foursquare_id", null: false
    t.text "foursquare_name"
    t.text "foursquare_email"
    t.text "encrypted_foursquare_token"
    t.text "google_email_address"
    t.text "encrypted_google_credentials"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "google_calendar_id"
    t.index ["foursquare_id"], name: "index_users_on_foursquare_id", unique: true
    t.index ["google_email_address"], name: "index_users_on_google_email_address", unique: true
  end

  add_foreign_key "check_ins", "users", on_delete: :cascade
end
