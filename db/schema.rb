# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171129233414) do

  create_table "cars", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "description"
    t.string "brand"
    t.string "model"
    t.float "mileage"
    t.string "fuel_type"
    t.string "registration_number"
    t.date "review"
    t.date "oil_change"
    t.boolean "notifications_allowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petrol_stations", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "postal_code"
    t.decimal "pb95_price", precision: 7, scale: 2
    t.decimal "pb98_price", precision: 7, scale: 2
    t.decimal "on_price", precision: 7, scale: 2
    t.decimal "gas_price", precision: 7, scale: 2
    t.integer "likes", default: 0
    t.integer "unlikes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petrol_stations_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "petrol_station_id", null: false
    t.index ["petrol_station_id"], name: "index_petrol_stations_users_on_petrol_station_id"
    t.index ["user_id"], name: "index_petrol_stations_users_on_user_id"
  end

  create_table "refuellings", force: :cascade do |t|
    t.integer "car_id"
    t.integer "petrol_station_id"
    t.string "description"
    t.decimal "total_price", precision: 7, scale: 2
    t.float "liters"
    t.float "mileage"
    t.datetime "date_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "password_digest"
    t.string "mail"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
