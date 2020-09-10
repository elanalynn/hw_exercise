# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_223116) do

  create_table "carriers", force: :cascade do |t|
    t.integer "carrier_id"
    t.string "company_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer "client_id"
    t.string "client_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "division"
    t.integer "major_group"
    t.integer "industry_group"
    t.integer "sic"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string "policy_type"
    t.string "division"
    t.integer "carrier_id"
    t.integer "client_id"
    t.datetime "effective_date"
    t.datetime "expiration_date"
    t.float "written_premium"
    t.integer "carrier_policy_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "policies", "carriers"
  add_foreign_key "policies", "clients"
end
