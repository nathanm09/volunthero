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

ActiveRecord::Schema.define(version: 2019_04_13_214530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vheros", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
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
    t.string "profile_pic"
    t.bigint "user_id"
    t.string "password_digest"
    t.index ["user_id"], name: "index_vheros_on_user_id"
  end

  create_table "vopportunities", force: :cascade do |t|
    t.string "voppname"
    t.string "vopplogo"
    t.string "shortdescr"
    t.integer "vorganization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "voppbanner"
    t.string "vopphours"
    t.string "voppaddress"
    t.string "voppcity"
    t.string "vopparea"
    t.string "voppcountry"
    t.datetime "voppdate"
    t.string "vherodescription"
    t.string "responsibilities"
    t.string "jobfunction"
    t.string "positionsavailable"
    t.datetime "deadlinedate"
    t.string "website"
    t.string "industry"
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
    t.bigint "user_id"
    t.string "email"
    t.string "password_digest"
    t.string "vorgaddress"
    t.string "aboutus"
    t.index ["user_id"], name: "index_vorganizations_on_user_id"
  end

  add_foreign_key "vorganizations", "users"
end
