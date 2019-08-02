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

ActiveRecord::Schema.define(version: 20190728075417) do

  create_table "asset_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "searial_number"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "location"
    t.string   "in_use"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "category"
    t.integer  "department_id"
    t.integer  "asset_make_id"
    t.string   "asset_model"
    t.text     "comments",            limit: 65535
    t.string   "center"
    t.string   "asset_tag"
    t.string   "asset_type"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "asset_makes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desktop_server_laptops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "host_name"
    t.string   "cpu_make"
    t.string   "cpu_model"
    t.string   "memory"
    t.string   "hard_disk"
    t.string   "os_license_key"
    t.string   "os_version"
    t.string   "office_version"
    t.string   "office_license_key"
    t.integer  "asset_detail_id"
    t.string   "ip_address"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "desktops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "mac"
    t.string   "monitor_serial_number"
    t.string   "monitor_make"
    t.string   "monitor_size"
    t.string   "current_location"
    t.string   "os"
    t.string   "os_version"
    t.string   "os_edition"
    t.string   "office"
    t.string   "office_version"
    t.string   "office_edition"
    t.string   "anti_virus"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "department"
    t.string   "cpu_make"
    t.string   "cpu_model"
    t.string   "cpu_speed"
    t.string   "memory"
    t.string   "hard_disk"
    t.string   "entity"
    t.string   "remarks"
    t.text     "history",               limit: 65535
    t.string   "tally_version"
    t.string   "tally_serial_number"
    t.string   "tally_scratch_key"
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.boolean  "is_donation"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "laptops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "mac"
    t.string   "monitor_size"
    t.string   "current_location"
    t.string   "os"
    t.string   "os_version"
    t.string   "os_edition"
    t.string   "office"
    t.string   "office_version"
    t.string   "office_edition"
    t.string   "anti_virus"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "department"
    t.string   "cpu_make"
    t.string   "cpu_model"
    t.string   "cpu_speed"
    t.string   "memory"
    t.string   "hard_disk"
    t.string   "entity"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.string   "tally_version"
    t.string   "tally_serial_number"
    t.string   "tally_scratch_key"
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "nas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "hard_disk_bay"
    t.string   "hard_disk_size"
    t.string   "hard_disk_count"
    t.string   "total_disk_size"
    t.string   "mac"
    t.string   "department"
    t.string   "current_location"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "entity"
    t.string   "ip_address"
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "network_devices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "asset_detail_id"
    t.string   "layer_type"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "others", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "department"
    t.string   "current_location"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "entity"
    t.string   "device_type"
    t.text     "raw_data",            limit: 65535
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "printers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "toner_number"
    t.string   "department"
    t.string   "current_location"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "entity"
    t.string   "ip_address"
    t.string   "type"
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "scanners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "department"
    t.string   "current_location"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "entity"
    t.string   "device_type"
    t.text     "raw_data",            limit: 65535
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "servers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "mac"
    t.string   "monitor_serial_number"
    t.string   "current_location"
    t.string   "os"
    t.string   "os_version"
    t.string   "os_edition"
    t.string   "office"
    t.string   "office_version"
    t.string   "office_edition"
    t.string   "anti_virus"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "department"
    t.string   "cpu_make"
    t.string   "cpu_model"
    t.string   "cpu_speed"
    t.string   "memory"
    t.string   "hard_disk"
    t.string   "entity"
    t.string   "remarks"
    t.text     "history",               limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "role"
    t.string   "ip_address"
    t.string   "url"
    t.boolean  "is_donation"
    t.string   "hardware_type"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "asset_tag"
    t.string   "host_name"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "ip_address"
    t.string   "department"
    t.string   "mac"
    t.string   "current_location"
    t.string   "warranty_status"
    t.datetime "warranty_start_date"
    t.datetime "warranty_end_date"
    t.string   "invoice_number"
    t.string   "status"
    t.string   "cost"
    t.datetime "verified_on"
    t.string   "verified_by"
    t.string   "remarks"
    t.text     "history",             limit: 65535
    t.boolean  "is_active"
    t.string   "purchased_at"
    t.string   "entity"
    t.boolean  "is_donation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
