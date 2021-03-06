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

ActiveRecord::Schema.define(:version => 20090902121608) do

  create_table "education_items", :force => true do |t|
    t.integer "resume_id"
    t.string  "title"
    t.date    "end_date"
  end

  create_table "portfolio_items", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "url"
    t.string   "image"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", :force => true do |t|
    t.string   "name"
    t.string   "job_title"
    t.string   "skills"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_experiences", :force => true do |t|
    t.integer "resume_id"
    t.string  "title"
    t.date    "start_date"
    t.date    "end_date"
    t.text    "body"
  end

end
