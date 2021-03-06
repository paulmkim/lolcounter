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

ActiveRecord::Schema.define(version: 20151104045139) do

  create_table "champions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "nickname",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "counters", force: :cascade do |t|
    t.integer  "champion_id",           limit: 4
    t.string   "role",                  limit: 255
    t.string   "first_counter_name",    limit: 255
    t.integer  "wins_against_first",    limit: 4
    t.integer  "losses_against_first",  limit: 4
    t.string   "second_counter_name",   limit: 255
    t.integer  "wins_against_second",   limit: 4
    t.integer  "losses_against_second", limit: 4
    t.string   "third_counter_name",    limit: 255
    t.integer  "wins_against_third",    limit: 4
    t.integer  "losses_against_third",  limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "RANK",       limit: 4
    t.integer  "WIN_TOP",    limit: 4
    t.integer  "WIN_JG",     limit: 4
    t.integer  "WIN_MID",    limit: 4
    t.integer  "WIN_ADC",    limit: 4
    t.integer  "WIN_SUP",    limit: 4
    t.integer  "LOSE_TOP",   limit: 4
    t.integer  "LOSE_JG",    limit: 4
    t.integer  "LOSE_MID",   limit: 4
    t.integer  "LOSE_ADC",   limit: 4
    t.integer  "LOSE_SUP",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer  "champion_id", limit: 4
    t.integer  "game_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parts", ["champion_id"], name: "index_parts_on_champion_id", using: :btree
  add_index "parts", ["game_id"], name: "index_parts_on_game_id", using: :btree

  create_table "summoners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
