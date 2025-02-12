# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_12_11_104258) do
  create_table "absents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "shift_id", null: false
    t.date "date", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_absents_on_shift_id"
    t.index ["user_id"], name: "index_absents_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "shift_id", null: false
    t.string "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_notifications_on_shift_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shifts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "number", null: false
    t.string "image"
    t.string "email", null: false
    t.integer "role", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "absents", "shifts"
  add_foreign_key "absents", "users"
  add_foreign_key "notifications", "shifts"
  add_foreign_key "notifications", "users"
  add_foreign_key "shifts", "users"
end
