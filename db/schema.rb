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

ActiveRecord::Schema.define(version: 2023_03_07_052018) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "count_emp"
    t.date "date_of_estd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "contact_details", force: :cascade do |t|
    t.integer "phone"
    t.string "address"
    t.string "email"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_contact_details_on_user_id"
  end

  create_table "education_details", force: :cascade do |t|
    t.string "ed_type", null: false
    t.integer "year_of_passout", null: false
    t.float "per_cgpa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_education_details_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "companie_id"
    t.index ["companie_id"], name: "index_jobs_on_companie_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "gender"
    t.integer "phone"
    t.string "address"
    t.string "email"
    t.date "date_of_birth"
    t.string "ed_type", null: false
    t.integer "year_of_passout", null: false
    t.float "per_cgpa"
    t.string "skills"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skills"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "companies", "users"
  add_foreign_key "contact_details", "users"
  add_foreign_key "education_details", "users"
  add_foreign_key "jobs", "companies", column: "companie_id"
  add_foreign_key "resumes", "users"
  add_foreign_key "skills", "users"
end
