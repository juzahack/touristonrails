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

ActiveRecord::Schema.define(version: 20150516190406) do

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "elements", force: :cascade do |t|
    t.integer  "path_id"
    t.integer  "activity_id"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "elements", ["activity_id"], name: "index_elements_on_activity_id"
  add_index "elements", ["path_id"], name: "index_elements_on_path_id"

  create_table "paths", force: :cascade do |t|
    t.date     "date"
    t.string   "place"
    t.string   "weather"
    t.string   "kind"
    t.string   "trip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paths_users", id: false, force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "path_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "paths_users", ["path_id"], name: "index_paths_users_on_path_id"
  add_index "paths_users", ["user_id"], name: "index_paths_users_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "email"
    t.integer  "reputation"
    t.string   "place"
    t.string   "kind"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
