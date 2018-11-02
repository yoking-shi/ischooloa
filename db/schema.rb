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

ActiveRecord::Schema.define(version: 2018_11_02_072811) do

  create_table "friendly_id_slugs", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, length: { slug: 70, scope: 70 }
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", length: { slug: 140 }
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "学校表", force: :cascade do |t|
    t.string "slug", null: false, comment: "编号"
    t.string "name", null: false, comment: "名称"
    t.string "address", comment: "地址"
    t.string "logo", comment: "logo"
    t.datetime "deleted_at", comment: "删除时间"
    t.integer "users_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_schools_on_name"
    t.index ["slug"], name: "index_schools_on_slug"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "用户表", force: :cascade do |t|
    t.integer "kind"
    t.string "slug", null: false, comment: "编号"
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
    t.index ["slug"], name: "index_users_on_slug"
  end

  add_foreign_key "users", "schools"
end
