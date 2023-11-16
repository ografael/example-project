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

ActiveRecord::Schema[7.0].define(version: 2023_11_16_135438) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointment_question_options", force: :cascade do |t|
    t.bigint "appointment_question_id", null: false
    t.string "question_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_question_id"], name: "index_appointment_question_options_on_appointment_question_id"
  end

  create_table "appointment_question_responses", force: :cascade do |t|
    t.bigint "appointment_question_id", null: false
    t.bigint "appointment_question_option_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_question_id"], name: "index_appointment_question_responses_on_appointment_question_id"
    t.index ["appointment_question_option_id"], name: "index_aqr_on_aqo_id"
    t.index ["patient_id"], name: "index_appointment_question_responses_on_patient_id"
  end

  create_table "appointment_questions", force: :cascade do |t|
    t.string "eye_side"
    t.bigint "appointment_title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_title_id"], name: "index_appointment_questions_on_appointment_title_id"
  end

  create_table "appointment_titles", force: :cascade do |t|
    t.string "name"
    t.bigint "appointment_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_group_id"], name: "index_appointment_titles_on_appointment_group_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointment_question_options", "appointment_questions"
  add_foreign_key "appointment_question_responses", "appointment_question_options"
  add_foreign_key "appointment_question_responses", "appointment_questions"
  add_foreign_key "appointment_question_responses", "patients"
  add_foreign_key "appointment_questions", "appointment_titles"
  add_foreign_key "appointment_titles", "appointment_groups"
end
