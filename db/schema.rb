# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131007060600) do

  create_table "chairpeople", force: true do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "mi"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chairpeople", ["department_id"], name: "index_chairpeople_on_department_id"

  create_table "days", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments_subjects", force: true do |t|
    t.integer  "department_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "mi"
    t.string   "status"
    t.integer  "load"
    t.integer  "subjsect_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professors", ["subjsect_id"], name: "index_professors_on_subjsect_id"

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "day_id"
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["day_id"], name: "index_schedules_on_day_id"
  add_index "schedules", ["timeslot_id"], name: "index_schedules_on_timeslot_id"

  create_table "sections", force: true do |t|
    t.string   "name"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "load"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjsects", force: true do |t|
    t.integer  "section_id"
    t.integer  "subject_id"
    t.integer  "room_id"
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjsects", ["room_id"], name: "index_subjsects_on_room_id"
  add_index "subjsects", ["schedule_id"], name: "index_subjsects_on_schedule_id"
  add_index "subjsects", ["section_id"], name: "index_subjsects_on_section_id"
  add_index "subjsects", ["subject_id"], name: "index_subjsects_on_subject_id"

  create_table "timeslots", force: true do |t|
    t.string   "name"
    t.time     "start"
    t.time     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
