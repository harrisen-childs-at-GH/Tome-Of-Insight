# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_11_212137) do
  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.string "traits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "campaign_id", null: false
    t.index ["campaign_id"], name: "index_enemies_on_campaign_id"
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "campaign_id", null: false
    t.string "name"
    t.string "traits"
    t.index ["campaign_id"], name: "index_locations_on_campaign_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "entry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "campaign_id", null: false
    t.index ["campaign_id"], name: "index_notes_on_campaign_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.string "traits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "campaign_id", null: false
    t.index ["campaign_id"], name: "index_npcs_on_campaign_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "enemies", "campaigns"
  add_foreign_key "locations", "campaigns"
  add_foreign_key "notes", "campaigns"
  add_foreign_key "npcs", "campaigns"
end
