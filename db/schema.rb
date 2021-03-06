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

ActiveRecord::Schema.define(version: 20170314142153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baskets", force: :cascade do |t|
    t.string   "size"
    t.string   "category"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "size_url"
    t.string   "category_url"
    t.integer  "price_cents",  default: 0, null: false
  end

  create_table "delivery_points", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extra_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "extra_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["extra_id"], name: "index_extra_orders_on_extra_id", using: :btree
    t.index ["order_id"], name: "index_extra_orders_on_order_id", using: :btree
  end

  create_table "extras", force: :cascade do |t|
    t.string   "photo"
    t.string   "name"
    t.string   "info"
    t.integer  "producer_id"
    t.string   "category"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.index ["producer_id"], name: "index_extras_on_producer_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "basket_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "delivery_point_id"
    t.string   "state"
    t.integer  "amount_cents",      default: 0, null: false
    t.json     "payment"
    t.index ["basket_id"], name: "index_orders_on_basket_id", using: :btree
    t.index ["delivery_point_id"], name: "index_orders_on_delivery_point_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "bio"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.string   "email"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "extra_orders", "extras"
  add_foreign_key "extra_orders", "orders"
  add_foreign_key "extras", "producers"
  add_foreign_key "orders", "baskets"
  add_foreign_key "orders", "delivery_points"
  add_foreign_key "orders", "users"
end
