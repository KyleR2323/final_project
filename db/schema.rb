# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_03_071712) do
  create_table "deliveries", force: :cascade do |t|
    t.integer "delivery_id"
    t.integer "order_id"
    t.datetime "estimated_arrival"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "user_id"
    t.decimal "total_amount"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id"
    t.string "brand"
    t.string "model"
    t.string "product_type"
    t.integer "quantity_available"
    t.string "gender"
    t.string "size"
    t.string "color"
    t.string "material"
    t.decimal "price"
    t.integer "saleprice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer "region_id"
    t.string "region_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_prices", force: :cascade do |t|
    t.integer "saleprice_id"
    t.decimal "sale_price"
    t.date "sale_date"
    t.string "sale_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "location"
    t.string "password"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
