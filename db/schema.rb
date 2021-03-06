# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_08_002200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.binary "symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "home_venue"
    t.string "state"
    t.integer "establish"
    t.string "club_url"
    t.bigint "members"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.float "height"
    t.float "weight"
    t.binary "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_id"
    t.string "level"
    t.binary "avatar_small"
    t.integer "games"
    t.integer "goals"
    t.integer "fantasy_points_total"
    t.integer "debut"
    t.index ["club_id"], name: "index_players_on_club_id"
  end

  add_foreign_key "players", "clubs"
end
