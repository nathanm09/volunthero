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

ActiveRecord::Schema.define(version: 2018_07_16_182320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "vheros", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password"
    t.string "shortdescr"
    t.string "jobtitle"
    t.string "organization"
    t.string "lastschool"
    t.string "city"
    t.string "province"
    t.string "country"
    t.string "handles"
    t.string "interests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vopportunities", force: :cascade do |t|
    t.string "voppname"
    t.string "vopplogo"
    t.string "title"
    t.string "shortdescr"
    t.integer "vorganization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vopportunity_enrolments", force: :cascade do |t|
    t.integer "vhero_id"
    t.integer "vopportunity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vorganizations", force: :cascade do |t|
    t.string "vorgname"
    t.string "website"
    t.string "vorglogo"
    t.string "shortdescr"
    t.string "vorgtype"
    t.string "city"
    t.string "province"
    t.string "country"
    t.string "handles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
