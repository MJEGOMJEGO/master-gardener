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

ActiveRecord::Schema.define(version: 2018_12_11_094034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.bigint "specie_id"
    t.integer "frequency_in_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.string "sentence"
    t.index ["specie_id"], name: "index_actions_on_specie_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "nickname"
    t.integer "life_points", default: 0
    t.bigint "user_id"
    t.bigint "specie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_plants_on_specie_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "quizz_answers", force: :cascade do |t|
    t.boolean "correct_answer_1"
    t.boolean "correct_answer_2"
    t.boolean "correct_answer_3"
    t.boolean "correct_answer_4"
    t.boolean "correct_answer_5"
    t.bigint "user_id"
    t.bigint "specie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_quizz_answers_on_specie_id"
    t.index ["user_id"], name: "index_quizz_answers_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.integer "max_life_points"
    t.string "quizz_question_1"
    t.boolean "quizz_answer_1"
    t.string "quizz_question_2"
    t.boolean "quizz_answer_2"
    t.string "quizz_question_3"
    t.boolean "quizz_answer_3"
    t.string "quizz_question_4"
    t.boolean "quizz_answer_4"
    t.string "quizz_question_5"
    t.boolean "quizz_answer_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "tasks", force: :cascade do |t|
    t.date "max_date"
    t.boolean "done", default: false
    t.bigint "plant_id"
    t.bigint "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "done_at"
    t.string "status"
    t.index ["action_id"], name: "index_tasks_on_action_id"
    t.index ["plant_id"], name: "index_tasks_on_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "city_location"
    t.integer "level"
    t.integer "score", default: 0
    t.string "img"
    t.text "badges", array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actions", "species", column: "specie_id"
  add_foreign_key "plants", "species", column: "specie_id"
  add_foreign_key "plants", "users"
  add_foreign_key "quizz_answers", "species", column: "specie_id"
  add_foreign_key "quizz_answers", "users"
  add_foreign_key "tasks", "actions"
  add_foreign_key "tasks", "plants"
end
