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

ActiveRecord::Schema.define(version: 20150406081557) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["link_id"], name: "index_comments_on_link_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "links", force: :cascade do |t|
    t.integer  "rating"
    t.integer  "user_id"
    t.string   "title"
    t.string   "body"
    t.string   "url"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_id"
    t.integer  "upvotes_count", default: 0
  end

  add_index "links", ["category_id"], name: "index_links_on_category_id"

  create_table "upvotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upvotes", ["link_id"], name: "index_upvotes_on_link_id"
  add_index "upvotes", ["user_id"], name: "index_upvotes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "name"
    t.boolean  "admin",           default: false
  end

end
