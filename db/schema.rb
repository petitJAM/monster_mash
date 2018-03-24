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

ActiveRecord::Schema.define(version: 20180323233905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monsters", force: :cascade do |t|
    t.string "name", null: false
    t.string "size", default: "", null: false
    t.string "creature_type", default: "", null: false
    t.string "alignment", default: "", null: false
    t.string "challenge_rating", default: "", null: false
    t.string "languages", default: [], null: false, array: true
    t.integer "speed", default: 30, null: false
    t.integer "burrow_speed", default: 0, null: false
    t.integer "climb_speed", default: 0, null: false
    t.integer "fly_speed", default: 0, null: false
    t.integer "swim_speed", default: 0, null: false
    t.integer "armor_class", default: 10, null: false
    t.string "armor_source", default: "", null: false
    t.integer "hit_points", default: 0, null: false
    t.integer "hit_die", null: false
    t.integer "number_of_hit_dice", default: 1, null: false
    t.string "vulnerabilities", default: [], null: false, array: true
    t.string "resistances", default: [], null: false, array: true
    t.string "immunities", default: [], null: false, array: true
    t.string "condition_immunities", default: [], null: false, array: true
    t.string "skills", default: [], null: false, array: true
    t.string "senses", default: [], null: false, array: true
    t.integer "strength", null: false
    t.integer "dexterity", null: false
    t.integer "constitution", null: false
    t.integer "intelligence", null: false
    t.integer "wisdom", null: false
    t.integer "charisma", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
