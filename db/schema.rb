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

ActiveRecord::Schema.define(version: 20160715190649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char_team_throughs", force: :cascade do |t|
    t.integer  "char_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chars", force: :cascade do |t|
    t.integer  "score"
    t.string   "f_name"
    t.string   "l_name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "show"
    t.string   "image"
    t.integer  "episodes"
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "access_key"
  end

  create_table "shows", force: :cascade do |t|
    t.integer  "episodes"
    t.float    "popularity"
    t.float    "vote_average"
    t.integer  "vote_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "poster"
    t.string   "name"
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "total_score"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "league_id"
    t.integer  "score"
    t.string   "user_name"
    t.boolean  "matched"
    t.datetime "media_update"
    t.datetime "faceoff_date"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
