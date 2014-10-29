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

ActiveRecord::Schema.define(version: 20141029132941) do

  create_table "bike_routes", force: true do |t|
    t.string   "name"
    t.string   "from"
    t.string   "to"
    t.string   "from_district"
    t.string   "to_district"
    t.string   "map_thumb"
    t.date     "date"
    t.text     "map_detail"
    t.text     "warning"
    t.string   "warning_thumb"
    t.text     "description"
    t.boolean  "mtb"
    t.integer  "distance"
    t.time     "time"
    t.string   "difficulty"
    t.text     "comments"
    t.string   "best_tod"
    t.boolean  "user_generated"
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "eng_name"
    t.string   "chi_name"
    t.string   "eng_region"
    t.string   "chi_region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
