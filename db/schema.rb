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

ActiveRecord::Schema.define(version: 2020_04_08_163227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title", limit: 32, null: false
    t.decimal "price", precision: 8, scale: 2
    t.integer "subject_id"
    t.text "description"
    t.integer "publisher_id"
    t.datetime "created_at"
  end

  create_table "books_subjects", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "subject_id", null: false
    t.index ["book_id"], name: "index_books_subjects_on_book_id"
    t.index ["subject_id"], name: "index_books_subjects_on_subject_id"
  end

  create_table "copies", force: :cascade do |t|
    t.string "condition"
    t.boolean "checked_out"
    t.integer "book_id"
    t.integer "library_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
