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

ActiveRecord::Schema.define(version: 2018_11_09_135403) do

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

# Could not dump table "sites" because of following StandardError
#   Unknown type 'geometry' for column 'geom'

  create_table "spatials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "auth_name"
    t.integer "auth_srid"
    t.text "srtext"
    t.text "proj4text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "streets" because of following StandardError
#   Unknown type 'geometry' for column 'geom'

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
    t.bigint "role_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "vias_engativa", id: :integer, unsigned: true, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "mviccalzadad", null: false
  end

  create_table "vias_engativas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "mviccalzadad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "incidents", "typeincidents"
  add_foreign_key "incidents", "users"
  add_foreign_key "registries", "users"
  add_foreign_key "users", "roles"
end
