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

ActiveRecord::Schema.define(version: 20161116151631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "date"
    t.integer  "number"
    t.integer  "user_id"
    t.integer  "nest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nest_id"], name: "index_bookings_on_nest_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "nests", force: :cascade do |t|
    t.integer  "max_capacity"
    t.time     "opening_hour"
    t.time     "closing_hour"
    t.integer  "price"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
    t.boolean  "wifi"
    t.boolean  "printer"
    t.boolean  "coffee"
    t.boolean  "tea"
    t.boolean  "microwave"
    t.text     "description"
    t.text     "other_equipment"
    t.boolean  "phoning_room"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "photo"
    t.index ["user_id"], name: "index_nests_on_user_id", using: :btree
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
    t.string   "job"
    t.string   "phone"
    t.string   "skype"
    t.string   "sexe"
    t.string   "quote"
    t.string   "dream_coworker"
    t.string   "song"
    t.string   "cv"
    t.date     "birthdate"
    t.text     "story"
    t.boolean  "host"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
    t.string   "website"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "wishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "nest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nest_id"], name: "index_wishes_on_nest_id", using: :btree
    t.index ["user_id"], name: "index_wishes_on_user_id", using: :btree
  end

  add_foreign_key "bookings", "nests"
  add_foreign_key "bookings", "users"
  add_foreign_key "nests", "users"
  add_foreign_key "wishes", "nests"
  add_foreign_key "wishes", "users"
end
