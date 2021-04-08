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

ActiveRecord::Schema.define(version: 2021_04_08_062254) do

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devices", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameD"
    t.bigint "producer_id", null: false
    t.string "info"
    t.bigint "category_id", null: false
    t.string "price"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_devices_on_category_id"
    t.index ["producer_id"], name: "index_devices_on_producer_id"
    t.index ["supplier_id"], name: "index_devices_on_supplier_id"
  end

  create_table "producers", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameP"
    t.string "natunal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameC"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "devices", "categories"
  add_foreign_key "devices", "producers"
  add_foreign_key "devices", "suppliers"
end
