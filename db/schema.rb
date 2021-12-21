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

ActiveRecord::Schema.define(version: 2019_08_02_083222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_taunts", force: :cascade do |t|
    t.string "tauntable_type"
    t.bigint "tauntable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tauntable_type", "tauntable_id"], name: "index_available_taunts_on_tauntable_type_and_tauntable_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "title"
    t.text "description"
    t.boolean "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_challenges_on_profile_id"
  end

  create_table "given_taunts", force: :cascade do |t|
    t.bigint "available_taunt_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["available_taunt_id"], name: "index_given_taunts_on_available_taunt_id"
    t.index ["profile_id"], name: "index_given_taunts_on_profile_id"
  end

  create_table "identities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_participations_on_challenge_id"
    t.index ["profile_id", "challenge_id"], name: "index_participations_on_profile_id_and_challenge_id", unique: true
    t.index ["profile_id"], name: "index_participations_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "display_name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "records", force: :cascade do |t|
    t.bigint "challenge_id"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_records_on_challenge_id"
  end

  create_table "text_taunts", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  create_table "wagers", force: :cascade do |t|
    t.bigint "challenge_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_wagers_on_challenge_id"
  end

  add_foreign_key "challenges", "profiles"
  add_foreign_key "given_taunts", "available_taunts"
  add_foreign_key "given_taunts", "profiles"
  add_foreign_key "participations", "challenges"
  add_foreign_key "participations", "profiles"
  add_foreign_key "records", "challenges"
  add_foreign_key "wagers", "challenges"
end
