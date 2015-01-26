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

ActiveRecord::Schema.define(version: 20150113035304) do

  create_table "batchnumbers", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cartonreports", force: true do |t|
    t.integer  "product_cartonship_id"
    t.integer  "endreport_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cartons", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dailyreports", force: true do |t|
    t.date     "use_date"
    t.integer  "department_id"
    t.integer  "batchnumber_id"
    t.integer  "amount"
    t.string   "motion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "endreports", force: true do |t|
    t.string   "firm"
    t.string   "product"
    t.string   "batch_number"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float    "total_time"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motions", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_cartonships", force: true do |t|
    t.integer  "product_id"
    t.integer  "carton_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_motionships", force: true do |t|
    t.integer  "product_id"
    t.integer  "motion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "capacity"
    t.boolean  "presence",   default: true
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sample_dailyreportships", force: true do |t|
    t.integer  "sample_id"
    t.integer  "dailyreport_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samples", force: true do |t|
    t.string   "name"
    t.boolean  "presence",   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usetimes", force: true do |t|
    t.string   "employee"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "dailyreport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
