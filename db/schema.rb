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

ActiveRecord::Schema.define(version: 2018_11_07_025813) do

  create_table "incidents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "coordinate"
    t.integer "status"
    t.datetime "initial_datetime"
    t.datetime "final_datetime"
    t.text "imagen"
    t.bigint "user_id"
    t.bigint "typeincident_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["typeincident_id"], name: "index_incidents_on_typeincident_id"
    t.index ["user_id"], name: "index_incidents_on_user_id"
  end

# Could not dump table "registries" because of following StandardError
#   Unknown type 'polygon' for column 'linestring'

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typeincidents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.integer "phone"
    t.string "gender"
    t.string "entity"
    t.string "cedula"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "incidents", "typeincidents"
  add_foreign_key "incidents", "users"
  add_foreign_key "registries", "users"
  add_foreign_key "users", "roles"
end
