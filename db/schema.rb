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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_01_02_063024) do

  create_table "applications", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
=======
ActiveRecord::Schema.define(version: 2019_01_04_072747) do
>>>>>>> ImplementPundit

  create_table "applications_employees", id: false, force: :cascade do |t|
    t.integer "application_id", null: false
    t.integer "employee_id", null: false
    t.index ["application_id", "employee_id"], name: "index_applications_employees_on_application_id_and_employee_id"
    t.index ["employee_id", "application_id"], name: "index_applications_employees_on_employee_id_and_application_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstName", null: false
    t.string "lastName", null: false
    t.string "username", null: false
    t.string "email", null: false
    t.integer "ext", null: false
    t.string "directPhone"
    t.string "directFax"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_title"
    t.date "anniversary"
    t.boolean "status", default: true
  end

  create_table "employees_locations", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "location_id", null: false
    t.index ["employee_id", "location_id"], name: "index_employees_locations_on_employee_id_and_location_id"
    t.index ["location_id", "employee_id"], name: "index_employees_locations_on_location_id_and_employee_id"
  end

  create_table "employees_programs", id: false, force: :cascade do |t|
    t.integer "program_id", null: false
    t.integer "employee_id", null: false
    t.index ["employee_id", "program_id"], name: "index_employees_programs_on_employee_id_and_program_id"
    t.index ["program_id", "employee_id"], name: "index_employees_programs_on_program_id_and_employee_id"
  end

  create_table "employees_securities", id: false, force: :cascade do |t|
    t.integer "security_id", null: false
    t.integer "employee_id", null: false
    t.index ["employee_id", "security_id"], name: "index_employees_securities_on_employee_id_and_security_id"
    t.index ["security_id", "employee_id"], name: "index_employees_securities_on_security_id_and_employee_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "streetAddress", null: false
    t.string "city", null: false
    t.string "state", default: "CA", null: false
    t.string "zipCode", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: true
    t.string "suite"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "securities", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string "role"
=======
    t.integer "role"
>>>>>>> ImplementPundit
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
