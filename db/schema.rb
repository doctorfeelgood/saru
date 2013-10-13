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

ActiveRecord::Schema.define(:version => 20131005212444) do

  create_table "bus_entries", :force => true do |t|
    t.integer  "unit_id"
    t.integer  "operator_id"
    t.integer  "shift_id"
    t.integer  "laps"
    t.time     "average_time"
    t.integer  "preferent_tickets"
    t.integer  "adult_tickets"
    t.decimal  "feria_total_income",         :precision => 8, :scale => 2
    t.decimal  "feria_tickets",              :precision => 8, :scale => 2
    t.decimal  "current_preferent_fare",     :precision => 8, :scale => 2
    t.decimal  "current_adult_fare",         :precision => 8, :scale => 2
    t.decimal  "current_feria_fare",         :precision => 8, :scale => 2
    t.integer  "total_tickets"
    t.decimal  "total_income",               :precision => 8, :scale => 2
    t.decimal  "average_income",             :precision => 8, :scale => 2
    t.integer  "worked_hours"
    t.integer  "extra_hours"
    t.decimal  "operator_salary",            :precision => 8, :scale => 2
    t.decimal  "diesel_liters",              :precision => 8, :scale => 2
    t.decimal  "diesel_price",               :precision => 8, :scale => 2
    t.decimal  "unit_expenses",              :precision => 8, :scale => 2
    t.decimal  "other_expenses",             :precision => 8, :scale => 2
    t.string   "other_expenses_description"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

  create_table "bus_entry_vouchers", :force => true do |t|
    t.integer  "voucher_id"
    t.integer  "bus_entry_id"
    t.decimal  "amount",       :precision => 8, :scale => 2
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "fares", :force => true do |t|
    t.string   "name"
    t.decimal  "price",      :precision => 8, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "operators", :force => true do |t|
    t.integer  "employee_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "cellphone_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "rfc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "periods", :force => true do |t|
    t.integer  "period_number"
    t.date     "beginning_date"
    t.date     "end_date"
    t.string   "duration"
    t.string   "status"
    t.string   "file_name"
    t.decimal  "total",          :precision => 8, :scale => 2
    t.decimal  "diesel_total",   :precision => 8, :scale => 2
    t.string   "ledger_account"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "shifts", :force => true do |t|
    t.integer  "period_id"
    t.integer  "shift_type"
    t.decimal  "shift_total",      :precision => 8, :scale => 2
    t.decimal  "partner_earnings", :precision => 8, :scale => 2
    t.date     "day"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "units", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "partner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_sessions", ["session_id"], :name => "index_user_sessions_on_session_id"
  add_index "user_sessions", ["updated_at"], :name => "index_user_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name",                :default => "", :null => false
    t.string   "login"
    t.string   "crypted_password",                    :null => false
    t.string   "password_salt",                       :null => false
    t.string   "email",                               :null => false
    t.string   "persistence_token",                   :null => false
    t.string   "single_access_token",                 :null => false
    t.string   "perishable_token",                    :null => false
    t.integer  "login_count",         :default => 0,  :null => false
    t.integer  "failed_login_count",  :default => 0,  :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "vouchers", :force => true do |t|
    t.string   "name"
    t.string   "descriptions"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
