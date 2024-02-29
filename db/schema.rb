# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_29_040306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_locations", force: :cascade do |t|
    t.string "street"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_spots", force: :cascade do |t|
    t.bigint "parking_location_id", null: false
    t.string "name"
    t.string "status"
    t.decimal "max_distance", default: "50.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_location_id"], name: "index_parking_spots_on_parking_location_id"
  end

  create_table "ultrasonic_readings", force: :cascade do |t|
    t.bigint "parking_spot_id", null: false
    t.decimal "reading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_spot_id"], name: "index_ultrasonic_readings_on_parking_spot_id"
  end

  add_foreign_key "parking_spots", "parking_locations"
  add_foreign_key "ultrasonic_readings", "parking_spots"
end
