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

ActiveRecord::Schema.define(version: 2018_04_15_220232) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bags", force: :cascade do |t|
    t.integer "address_id"
    t.integer "order_id"
    t.string "shipping_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_bags_on_address_id"
    t.index ["order_id"], name: "index_bags_on_order_id"
  end

  create_table "candies", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "chef_name"
    t.string "contributor"
    t.string "package_type"
    t.integer "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_type", "package_id"], name: "index_candies_on_package_type_and_package_id"
  end

  create_table "gift_boxes", force: :cascade do |t|
    t.integer "address_id"
    t.integer "order_id"
    t.string "shipping_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_gift_boxes_on_address_id"
    t.index ["order_id"], name: "index_gift_boxes_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "address_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_orders_on_address_id"
  end

  create_table "rail_cars", force: :cascade do |t|
    t.integer "address_id"
    t.integer "order_id"
    t.string "shipping_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_rail_cars_on_address_id"
    t.index ["order_id"], name: "index_rail_cars_on_order_id"
  end

end
