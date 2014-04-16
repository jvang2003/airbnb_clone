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

ActiveRecord::Schema.define(version: 20140416160252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: true do |t|
    t.string "name"
  end

  create_table "bed_types", force: true do |t|
    t.string "name"
  end

  create_table "listings", force: true do |t|
    t.integer "user_id"
    t.string  "address"
    t.string  "city"
    t.integer "bed_type_id"
    t.integer "room_type_id"
    t.integer "bedroom_count"
    t.integer "bathroom_count"
    t.text    "description"
    t.float   "nightly_rate"
    t.float   "weekly_rate"
    t.float   "monthly_rate"
  end

  create_table "photos", force: true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "listing_id"
  end

  create_table "reservations", force: true do |t|
    t.integer "listing_id"
    t.integer "user_id"
  end

  create_table "room_types", force: true do |t|
    t.string "name"
  end

  create_table "tags", force: true do |t|
    t.integer "listing_id"
    t.integer "amenity_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
