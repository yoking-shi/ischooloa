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

ActiveRecord::Schema.define(version: 2018_11_02_070146) do

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "学校表", force: :cascade do |t|
    t.string "uuid", null: false, comment: "编号"
    t.string "name", null: false, comment: "名称"
    t.string "address", comment: "地址"
    t.string "logo", comment: "logo"
    t.datetime "deleted_at", comment: "删除时间"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_schools_on_name"
    t.index ["uuid"], name: "index_schools_on_uuid"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "用户表", force: :cascade do |t|
    t.string "uuid", null: false, comment: "编号"
    t.string "account", null: false, comment: "用户账号"
    t.string "password_digest"
    t.string "mobile", null: false, comment: "手机号码"
    t.string "realname", comment: "真实姓名"
    t.string "avatar", comment: "头像"
    t.string "token"
    t.bigint "school_id"
    t.datetime "deleted_at", comment: "删除时间"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account"], name: "index_users_on_account"
    t.index ["mobile"], name: "index_users_on_mobile"
    t.index ["school_id"], name: "index_users_on_school_id"
    t.index ["uuid"], name: "index_users_on_uuid"
  end

  add_foreign_key "users", "schools"
end
