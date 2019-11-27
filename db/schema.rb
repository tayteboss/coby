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

ActiveRecord::Schema.define(version: 2019_11_27_001251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.date "event_date"
    t.text "location"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.text "description"
    t.text "age_group"
    t.boolean "active_status"
    t.integer "buddy_one"
    t.integer "buddy_two"
    t.index ["event_id"], name: "index_posts_on_event_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.text "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.text "profile_pic"
    t.string "gender"
    t.text "bio"
    t.string "location"
  end

  add_foreign_key "posts", "events"
  add_foreign_key "posts", "users"
end
