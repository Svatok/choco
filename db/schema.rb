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

ActiveRecord::Schema.define(version: 2018_05_20_211409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.integer "position", default: 0
    t.boolean "current", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "best_sellers", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_best_sellers_on_product_id"
    t.index ["section_id"], name: "index_best_sellers_on_section_id"
  end

  create_table "featured_products", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_featured_products_on_product_id"
    t.index ["section_id"], name: "index_featured_products_on_section_id"
  end

  create_table "header_links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "rank", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_header_links_on_ancestry"
  end

  create_table "new_arrivals", force: :cascade do |t|
    t.string "url"
    t.string "image"
    t.integer "position", default: 0
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_new_arrivals_on_section_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "url"
    t.integer "position", default: 0
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_offers_on_section_id"
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

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.integer "status", default: 0
    t.integer "section_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_logos", force: :cascade do |t|
    t.string "logo"
    t.boolean "current", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_offers", force: :cascade do |t|
    t.string "title"
    t.string "short_description"
    t.string "url"
    t.string "image"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_special_offers_on_section_id"
  end

  create_table "upcoming_offers", force: :cascade do |t|
    t.string "short_title"
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_upcoming_offers_on_section_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "best_sellers", "products"
  add_foreign_key "best_sellers", "sections"
  add_foreign_key "featured_products", "products"
  add_foreign_key "featured_products", "sections"
  add_foreign_key "new_arrivals", "sections"
  add_foreign_key "offers", "sections"
  add_foreign_key "products", "product_categories"
  add_foreign_key "special_offers", "sections"
  add_foreign_key "upcoming_offers", "sections"
end
