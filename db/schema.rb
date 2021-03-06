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

ActiveRecord::Schema.define(version: 20141227194634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso"
  end

  create_table "credentials", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_practices", force: true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.integer  "speciality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_practices", ["speciality_id"], name: "index_group_practices_on_speciality_id", using: :btree

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hospitals", ["state_id"], name: "index_hospitals_on_state_id", using: :btree

  create_table "medical_schools", force: true do |t|
    t.string   "name"
    t.integer  "ranking"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medical_schools", ["state_id"], name: "index_medical_schools_on_state_id", using: :btree

  create_table "months", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
    t.integer  "medical_school_id"
    t.integer  "NPI",                     limit: 8
    t.integer  "gender_id"
    t.date     "birth"
    t.string   "phone"
    t.integer  "residency_hospital_id"
    t.integer  "affiliation_hospital_id"
    t.integer  "credential_id"
    t.integer  "group_practice_id"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "street"
    t.text     "suite"
    t.text     "city"
    t.string   "surname"
    t.float    "score"
  end

  add_index "physicians", ["affiliation_hospital_id"], name: "index_physicians_on_affiliation_hospital_id", using: :btree
  add_index "physicians", ["country_id"], name: "index_physicians_on_country_id", using: :btree
  add_index "physicians", ["credential_id"], name: "index_physicians_on_credential_id", using: :btree
  add_index "physicians", ["gender_id"], name: "index_physicians_on_gender_id", using: :btree
  add_index "physicians", ["group_practice_id"], name: "index_physicians_on_group_practice_id", using: :btree
  add_index "physicians", ["medical_school_id"], name: "index_physicians_on_medical_school_id", using: :btree
  add_index "physicians", ["residency_hospital_id"], name: "index_physicians_on_residency_hospital_id", using: :btree
  add_index "physicians", ["state_id"], name: "index_physicians_on_state_id", using: :btree

  create_table "physicians_specialties", id: false, force: true do |t|
    t.integer "physician_id", null: false
    t.integer "specialty_id", null: false
  end

  add_index "physicians_specialties", ["physician_id", "specialty_id"], name: "index_physicians_specialties_on_physician_id_and_specialty_id", using: :btree
  add_index "physicians_specialties", ["specialty_id", "physician_id"], name: "index_physicians_specialties_on_specialty_id_and_physician_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "overall_score"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "physician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["physician_id"], name: "index_reviews_on_physician_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "specialties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso"
    t.integer  "country_id"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "admin"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "ip_address"
    t.float    "lat"
    t.float    "lon"
    t.string   "surname"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "zip_codes", force: true do |t|
    t.integer  "zip"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zip_codes", ["state_id"], name: "index_zip_codes_on_state_id", using: :btree

end
