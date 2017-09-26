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

ActiveRecord::Schema.define(version: 20170926222309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_request_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_requests", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "date", null: false
    t.integer "participants_number", null: false
    t.bigint "responsable_id"
    t.bigint "office_id"
    t.bigint "event_request_status_id"
    t.bigint "event_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_request_status_id"], name: "index_event_requests_on_event_request_status_id"
    t.index ["event_type_id"], name: "index_event_requests_on_event_type_id"
    t.index ["office_id"], name: "index_event_requests_on_office_id"
    t.index ["responsable_id"], name: "index_event_requests_on_responsable_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "enabled", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "event_request_id"
    t.bigint "supplier_id"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_request_id"], name: "index_events_on_event_request_id"
    t.index ["supplier_id"], name: "index_events_on_supplier_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "enabled", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsables", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email"
    t.string "phone", null: false
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_requests", "event_request_statuses"
  add_foreign_key "event_requests", "event_types"
  add_foreign_key "event_requests", "offices"
  add_foreign_key "event_requests", "responsables"
  add_foreign_key "events", "event_requests"
  add_foreign_key "events", "suppliers"
end
