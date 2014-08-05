# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140805131720) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "amenities", force: true do |t|
    t.string   "name"
    t.integer  "remote_id"
    t.datetime "remote_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "remote_data"
  end

  create_table "bookings", force: true do |t|
    t.string   "name"
    t.datetime "synced_all_at"
    t.integer  "synced_id"
    t.text     "synced_data"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reviews_count"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "synced_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_translations", force: true do |t|
    t.integer  "location_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "location_translations", ["locale"], name: "index_location_translations_on_locale"
  add_index "location_translations", ["location_id"], name: "index_location_translations_on_location_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "synced_id"
    t.text     "synced_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "filename"
    t.integer  "synced_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "canceled_at"
  end

  create_table "rentals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "synced_id"
    t.text     "synced_data"
    t.integer  "account_id"
  end

  add_index "rentals", ["synced_id"], name: "index_rentals_on_synced_id"

  create_table "synced_synchronizations", force: true do |t|
    t.string   "model"
    t.datetime "synchronized_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
