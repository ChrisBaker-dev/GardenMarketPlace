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

ActiveRecord::Schema.define(version: 2021_06_02_021029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "farm_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "farmer_id", null: false
    t.text "description"
    t.bigint "produce_id", null: false
    t.decimal "qty", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farmer_id"], name: "index_listings_on_farmer_id"
    t.index ["produce_id"], name: "index_listings_on_produce_id"
  end

  create_table "produce_families", force: :cascade do |t|
    t.string "family", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produce_listings", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.bigint "produce_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_produce_listings_on_listing_id"
    t.index ["produce_id"], name: "index_produce_listings_on_produce_id"
  end

  create_table "produces", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "produce_family_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produce_family_id"], name: "index_produces_on_produce_family_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "listings", "farmers"
  add_foreign_key "listings", "produces"
  add_foreign_key "produce_listings", "listings"
  add_foreign_key "produce_listings", "produces"
  add_foreign_key "produces", "produce_families"
end
