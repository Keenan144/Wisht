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

ActiveRecord::Schema.define(version: 20150712145107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title",      default: " "
    t.string   "date",       default: " "
    t.text     "content",    default: " "
    t.integer  "list_id",    default: 0
    t.integer  "user_id",    default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title",      default: " "
    t.string   "date",       default: " "
    t.text     "content",    default: " "
    t.integer  "wish_id",    default: 0
    t.integer  "user_id",    default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id",    default: 0
    t.integer  "friend_id",  default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lists", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       default: " "
    t.integer  "user_id",     default: 0
    t.text     "description", default: " "
  end

  create_table "replies", force: :cascade do |t|
    t.string   "title",      default: " "
    t.string   "date",       default: " "
    t.text     "content",    default: " "
    t.integer  "comment_id", default: 0
    t.integer  "user_id",    default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.datetime "login"
    t.integer  "login_count",     default: 0
  end

  create_table "wishes", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "user_id",    default: " "
    t.string   "content",    default: " "
    t.string   "url",        default: " "
    t.string   "price",      default: " "
    t.integer  "list_id",    default: 0
    t.string   "name",       default: " "
    t.text     "notes",      default: " "
    t.string   "site",       default: " "
    t.integer  "views",      default: 1
  end

end
