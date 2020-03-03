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

ActiveRecord::Schema.define(version: 2020_03_03_184525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string "location"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "entry_answers", force: :cascade do |t|
    t.integer "numeric_answer"
    t.boolean "boolean_answer"
    t.text "details"
    t.bigint "entry_id"
    t.bigint "user_question_id"
    t.index ["entry_id"], name: "index_entry_answers_on_entry_id"
    t.index ["user_question_id"], name: "index_entry_answers_on_user_question_id"
  end

  create_table "entry_tags", force: :cascade do |t|
    t.bigint "entry_id"
    t.bigint "tag_id"
    t.index ["entry_id"], name: "index_entry_tags_on_entry_id"
    t.index ["tag_id"], name: "index_entry_tags_on_tag_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "answer_type"
    t.string "start_label"
    t.string "end_label"
    t.bigint "user_id"
    t.bigint "topic_id"
    t.index ["topic_id"], name: "index_questions_on_topic_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
  end

  create_table "user_questions", force: :cascade do |t|
    t.string "status"
    t.string "frequency"
    t.bigint "user_id"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_user_questions_on_question_id"
    t.index ["user_id"], name: "index_user_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.datetime "birthday"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "users"
  add_foreign_key "entry_answers", "entries"
  add_foreign_key "entry_answers", "user_questions"
  add_foreign_key "entry_tags", "entries"
  add_foreign_key "entry_tags", "tags"
  add_foreign_key "questions", "topics"
  add_foreign_key "questions", "users"
  add_foreign_key "tags", "users"
  add_foreign_key "user_questions", "questions"
  add_foreign_key "user_questions", "users"
end
