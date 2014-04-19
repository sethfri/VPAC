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

ActiveRecord::Schema.define(version: 20140419013748) do

  create_table "acfee_topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contet"
    t.text     "content"
  end

  create_table "anchor_link_topics", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attended_shows", force: true do |t|
    t.string   "title"
    t.string   "school_year"
    t.string   "host_org"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attended_shows_members", id: false, force: true do |t|
    t.integer "attended_show_id"
    t.integer "member_id"
  end

  create_table "board_members", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "photo_url"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
  end

  create_table "member_groups", force: true do |t|
    t.string   "name"
    t.string   "photo_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website_url"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicity_topics", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
