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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130605154757) do

  create_table "graduate_student_infos", :force => true do |t|
    t.string   "UID"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "degree"
    t.string   "gender"
    t.string   "international"
    t.string   "cohort"
    t.date     "start_date"
    t.date     "must_achieve_cand_by"
    t.date     "candidacy"
    t.date     "candidacy_expires"
    t.integer  "cand_ext_count"
    t.date     "must_defend_prospectus_by"
    t.date     "prospectus"
    t.integer  "prosp_ext_count"
    t.date     "dissertation_submitted"
    t.date     "leave_of_absence_start_date"
    t.date     "dropped_down_to_MS"
    t.date     "withdrawn_date"
    t.string   "notes"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

end
