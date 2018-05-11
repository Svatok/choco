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

ActiveRecord::Schema.define(version: 2018_05_12_214653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "header_links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "rank", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_header_links_on_ancestry"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "rank", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_product_categories_on_ancestry"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.text "description"
    t.bigint "product_category_id"
    t.integer "availability"
    t.decimal "price", precision: 12, scale: 2, default: "0.0"
    t.decimal "old_price", precision: 12, scale: 2, default: "0.0"
    t.integer "views_count", default: 0
    t.boolean "new_product", default: false
    t.boolean "best_seller", default: false
    t.boolean "popular", default: false
    t.boolean "featured", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "site_logos", force: :cascade do |t|
    t.string "logo"
    t.boolean "current", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "product_categories"
end
