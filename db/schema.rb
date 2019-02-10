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

ActiveRecord::Schema.define(version: 2019_02_06_150124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "meal_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_type_id"], name: "index_meals_on_meal_type_id"
  end

  create_table "user_diets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "meal_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_type_id"], name: "index_user_diets_on_meal_type_id"
    t.index ["user_id"], name: "index_user_diets_on_user_id"
  end

  create_table "user_favorite_meals", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_user_favorite_meals_on_meal_id"
    t.index ["user_id"], name: "index_user_favorite_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "user_diets", "meal_types"
  add_foreign_key "user_diets", "users"
  add_foreign_key "user_favorite_meals", "meals"
  add_foreign_key "user_favorite_meals", "users"
end