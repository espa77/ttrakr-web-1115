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

ActiveRecord::Schema.define(version: 20160112161622) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "lesson_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["lesson_id"], name: "index_comments_on_lesson_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.string   "notes"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lessons", ["user_id"], name: "index_lessons_on_user_id"

  create_table "pairings", force: :cascade do |t|
    t.integer  "shirt_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pairings", ["lesson_id"], name: "index_pairings_on_lesson_id"
  add_index "pairings", ["shirt_id"], name: "index_pairings_on_shirt_id"

  create_table "shirts", force: :cascade do |t|
    t.string   "name"
    t.string   "source_url"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

end
