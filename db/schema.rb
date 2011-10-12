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

ActiveRecord::Schema.define(:version => 20111012202238) do

  create_table "aspirations", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aspirations", ["thing_id"], :name => "index_aspirations_on_thing_id"
  add_index "aspirations", ["user_id"], :name => "index_aspirations_on_user_id"

  create_table "haves", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "haves", ["thing_id"], :name => "index_haves_on_thing_id"
  add_index "haves", ["user_id"], :name => "index_haves_on_user_id"

  create_table "likes", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["thing_id"], :name => "index_likes_on_thing_id"
  add_index "likes", ["user_id"], :name => "index_likes_on_user_id"

  create_table "things", :force => true do |t|
    t.string   "name"
    t.string   "make"
    t.string   "photo_url"
    t.string   "url"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "things", ["user_id"], :name => "index_things_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "facebook_id"
    t.string   "access_token"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
