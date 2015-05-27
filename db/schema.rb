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

ActiveRecord::Schema.define(version: 20150527215601) do

  create_table "invoices", force: :cascade do |t|
    t.date     "date"
    t.string   "company"
    t.string   "product"
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "total"
    t.integer  "quote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invoices", ["quote_id"], name: "index_invoices_on_quote_id"

  create_table "quotes", force: :cascade do |t|
    t.date     "date"
    t.string   "company"
    t.string   "product"
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "approved"
  end

end
