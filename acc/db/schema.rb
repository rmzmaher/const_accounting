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

ActiveRecord::Schema.define(version: 20160831124024) do

  create_table "buys", force: :cascade do |t|
    t.float    "paid",           limit: 24,    default: 0.0
    t.float    "price_per_unit", limit: 24,    default: 0.0
    t.integer  "quantity",       limit: 4,     default: 0
    t.date     "date"
    t.text     "note",           limit: 65535
    t.integer  "good_id",        limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "buys", ["good_id"], name: "index_buys_on_good_id", using: :btree

  create_table "contractors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "cause",      limit: 255
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "unit",       limit: 255
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pays", force: :cascade do |t|
    t.float    "amount",        limit: 24
    t.date     "date"
    t.text     "note",          limit: 65535
    t.integer  "contractor_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "pays", ["contractor_id"], name: "index_pays_on_contractor_id", using: :btree

  create_table "saves", force: :cascade do |t|
    t.integer  "cash",       limit: 4
    t.date     "date"
    t.string   "sheet",      limit: 255
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "buys", "goods"
  add_foreign_key "pays", "contractors"
end
