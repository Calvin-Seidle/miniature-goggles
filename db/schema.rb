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

ActiveRecord::Schema.define(version: 20170718125012) do

  create_table "employee_report_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Report_Type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Report_Name"
    t.date "Report_Start_Date"
    t.date "Report_End_Date"
    t.bigint "employee_report_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["employee_report_type_id"], name: "index_employee_reports_on_employee_report_type_id"
    t.index ["user_id"], name: "index_employee_reports_on_user_id"
  end

  create_table "employee_task_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Task_Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Task_Name"
    t.date "Task_Start_Date"
    t.bigint "employee_report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "Task_Description"
    t.boolean "Task_Status"
    t.date "Task_Due_Date"
    t.index ["employee_report_id"], name: "index_employee_tasks_on_employee_report_id"
    t.index ["user_id"], name: "index_employee_tasks_on_user_id"
  end

  create_table "employee_user_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Employee_User_Level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "id_number"
    t.bigint "employee_user_level_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_user_level_id"], name: "index_users_on_employee_user_level_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employee_reports", "employee_report_types"
  add_foreign_key "employee_reports", "users"
  add_foreign_key "employee_tasks", "employee_reports"
  add_foreign_key "employee_tasks", "users"
  add_foreign_key "users", "employee_user_levels"
end
