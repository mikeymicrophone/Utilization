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

ActiveRecord::Schema.define(:version => 20111113195807) do

  create_table "appreciations", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appreciations", ["thing_id"], :name => "index_appreciations_on_thing_id"
  add_index "appreciations", ["user_id"], :name => "index_appreciations_on_user_id"

  create_table "aspirations", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aspirations", ["thing_id"], :name => "index_aspirations_on_thing_id"
  add_index "aspirations", ["user_id"], :name => "index_aspirations_on_user_id"

  create_table "characteristics", :force => true do |t|
    t.integer  "detail_id"
    t.integer  "thing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characteristics", ["detail_id"], :name => "index_characteristics_on_detail_id"
  add_index "characteristics", ["thing_id"], :name => "index_characteristics_on_thing_id"

  create_table "details", :force => true do |t|
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "details", ["user_id"], :name => "index_details_on_user_id"

  create_table "expertises", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expertises", ["thing_id"], :name => "index_expertises_on_thing_id"
  add_index "expertises", ["user_id"], :name => "index_expertises_on_user_id"

  create_table "patronages", :force => true do |t|
    t.integer  "characteristic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patronages", ["characteristic_id"], :name => "index_patronages_on_characteristic_id"
  add_index "patronages", ["user_id"], :name => "index_patronages_on_user_id"

  create_table "possessions", :force => true do |t|
    t.integer  "thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "possessions", ["thing_id"], :name => "index_possessions_on_thing_id"
  add_index "possessions", ["user_id"], :name => "index_possessions_on_user_id"

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
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
  end

end
