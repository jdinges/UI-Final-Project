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

ActiveRecord::Schema.define(:version => 20111208063636) do

  create_table "courses", :force => true do |t|
    t.integer  "user_id"
    t.string   "title",         :default => "My New Course"
    t.string   "link",          :default => "http://my.course.url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course_number"
  end

  create_table "educations", :force => true do |t|
    t.string   "university"
    t.string   "degree",     :default => "Your Degree"
    t.string   "year",       :default => "Your University"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "papers", :force => true do |t|
    t.integer  "user_id"
    t.string   "title",          :default => "My New Paper", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.string   "authors"
    t.string   "publisher"
    t.string   "date_published"
    t.integer  "page_count"
  end

  create_table "researches", :force => true do |t|
    t.string   "title",       :default => "My Research Paper"
    t.string   "link",        :default => "http://my.research.url"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stylesheet"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "persistence_token"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                                 :null => false
    t.string   "title"
    t.string   "bio"
    t.string   "office"
    t.string   "department"
    t.string   "phone_number"
    t.boolean  "published",         :default => false, :null => false
    t.integer  "style_id",          :default => 1
    t.string   "twitter_username"
  end

end
