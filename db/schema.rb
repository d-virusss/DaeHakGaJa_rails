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

ActiveRecord::Schema.define(version: 2020_11_19_064856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.bigint "major_id", null: false
    t.decimal "male_ratio"
    t.decimal "female_ratio"
    t.integer "avg_salary"
    t.decimal "satisfaction"
    t.decimal "employment_rate"
    t.decimal "applicant_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["major_id"], name: "index_charts_on_major_id"
  end

  create_table "legends", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.string "main_subject"
    t.string "enter_field"
    t.string "job"
    t.bigint "legend_id"
    t.index ["legend_id"], name: "index_majors_on_legend_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "university_majors", force: :cascade do |t|
    t.bigint "major_id"
    t.bigint "university_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["major_id"], name: "index_university_majors_on_major_id"
    t.index ["university_id"], name: "index_university_majors_on_university_id"
  end

  add_foreign_key "charts", "majors"
  add_foreign_key "majors", "legends"
  add_foreign_key "university_majors", "majors"
  add_foreign_key "university_majors", "universities"
end
