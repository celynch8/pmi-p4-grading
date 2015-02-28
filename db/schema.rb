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

ActiveRecord::Schema.define(version: 20150228184041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string  "name"
    t.text    "objective1"
    t.text    "objective1_goal1"
    t.text    "objective1_goal2"
    t.text    "objective1_goal3"
    t.text    "objective1_goal4"
    t.integer "objective1_score"
    t.text    "objective1_feedback"
    t.text    "objective2"
    t.text    "objective2_goal1"
    t.text    "objective2_goal2"
    t.text    "objective2_goal3"
    t.text    "objective2_goal4"
    t.integer "objective2_score"
    t.text    "objective2_feedback"
    t.text    "objective3"
    t.text    "objective3_goal1"
    t.text    "objective3_goal2"
    t.text    "objective3_goal3"
    t.text    "objective3_goal4"
    t.integer "objective3_score"
    t.text    "objective3_feedback"
    t.integer "presentation_score"
    t.text    "presentation_feedback"
    t.integer "teamwork_score"
    t.text    "teamwork_feedback"
    t.integer "overall_score"
    t.text    "overall_feedback"
    t.integer "student_1_id"
    t.integer "student_2_id"
  end

  create_table "students", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.integer "project_id"
  end

end
