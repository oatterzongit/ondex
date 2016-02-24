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

ActiveRecord::Schema.define(version: 20160224174800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctions", force: :cascade do |t|
    t.string   "item_name"
    t.text     "item_desc"
    t.string   "tags"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.string   "item_img_file_name"
    t.string   "item_img_content_type"
    t.integer  "item_img_file_size"
    t.datetime "item_img_updated_at"
  end

  add_index "auctions", ["user_id"], name: "index_auctions_on_user_id", using: :btree

  create_table "offers", force: :cascade do |t|
    t.text     "offer_desc"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "auction_id"
    t.string   "item_img_file_name"
    t.string   "item_img_content_type"
    t.integer  "item_img_file_size"
    t.datetime "item_img_updated_at"
  end

  add_index "offers", ["auction_id"], name: "index_offers_on_auction_id", using: :btree
  add_index "offers", ["user_id"], name: "index_offers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "auction_count"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "auctions", "users"
  add_foreign_key "offers", "auctions"
  add_foreign_key "offers", "users"
end
