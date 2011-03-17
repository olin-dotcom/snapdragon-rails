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

ActiveRecord::Schema.define(:version => 20110317190454) do

  create_table "bursts", :force => true do |t|
    t.datetime "datetime"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credentials", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credentials", ["email"], :name => "index_credentials_on_email", :unique => true
  add_index "credentials", ["reset_password_token"], :name => "index_credentials_on_reset_password_token", :unique => true

  create_table "events", :force => true do |t|
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "start"
    t.datetime "end"
    t.decimal  "radius"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snaps", :force => true do |t|
    t.integer  "user_id"
    t.integer  "burst_id"
    t.string   "image_url"
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "datetime"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
