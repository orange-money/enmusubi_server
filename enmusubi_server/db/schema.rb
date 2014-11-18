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

ActiveRecord::Schema.define(version: 20141116102921) do

  create_table "images", primary_key: "textinfo_id", force: true do |t|
    t.string   "file_name",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", primary_key: "textinfo_id", force: true do |t|
    t.integer  "user_id",                                    null: false
    t.string   "lecture_name",                               null: false
    t.string   "textbook_name",                              null: false
    t.integer  "price",                                      null: false
    t.string   "comment"
    t.binary   "image",         limit: 16777215
    t.integer  "status",                         default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "univ",                                       null: false
    t.string   "teacher"
  end

  create_table "users", primary_key: "user_id", force: true do |t|
    t.string   "name",       null: false
    t.string   "link",       null: false
    t.string   "univ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
