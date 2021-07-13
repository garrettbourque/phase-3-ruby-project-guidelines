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

ActiveRecord::Schema.define(version: 2021_07_13_202048) do

  create_table "adopts", force: :cascade do |t|
    t.integer "applicant_id"
    t.integer "child_id"
    t.string "status"
  end

  create_table "applicants", force: :cascade do |t|
    t.string "name"
    t.integer "income"
    t.string "address"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "sex"
  end

  create_table "foster_families", force: :cascade do |t|
    t.string "name"
    t.integer "income"
    t.string "address"
  end

  create_table "fosters", force: :cascade do |t|
    t.integer "foster_family_id"
    t.integer "child_id"
    t.string "status"
  end

end
