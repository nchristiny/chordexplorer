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

ActiveRecord::Schema.define(version: 20151102192036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chords", force: :cascade do |t|
    t.string   "name"
    t.string   "family"
    t.integer  "frequency"
    t.string   "code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "escaped_name"
  end

  create_table "included_chords", force: :cascade do |t|
    t.integer  "chord_id"
    t.integer  "tab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "included_chords", ["chord_id"], name: "index_included_chords_on_chord_id", using: :btree
  add_index "included_chords", ["tab_id"], name: "index_included_chords_on_tab_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tabs", force: :cascade do |t|
    t.string   "url"
    t.integer  "rating"
    t.integer  "click_count"
    t.text     "raw_html"
    t.string   "binary_chords"
    t.string   "domain"
    t.integer  "song_id"
    t.integer  "view_count"
    t.integer  "review_count"
    t.string   "ranking"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "sequence",      default: [],              array: true
  end

  create_table "ultimate_raws", force: :cascade do |t|
    t.string   "url"
    t.string   "raw_html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_saved_chords", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "chord_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_songs", force: :cascade do |t|
    t.integer  "difficulty"
    t.boolean  "saved"
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
