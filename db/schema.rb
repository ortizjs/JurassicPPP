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

ActiveRecord::Schema.define(version: 2021_01_20_023613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cages", force: :cascade do |t|
    t.integer "max_cap"
    t.string "power_status"
    t.integer "num_members"
    t.integer "species", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinosaurs", force: :cascade do |t|
    t.string "name", null: false
    t.integer "species_id", null: false
    t.string "food_preference"
    t.integer "cage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dinosaurs_on_name"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "food_preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end