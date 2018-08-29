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

ActiveRecord::Schema.define(version: 2018_08_29_190138) do

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

  create_table "catalog_banners", force: :cascade do |t|
    t.string "title"
    t.string "short_description"
    t.boolean "current", default: true
    t.string "image"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "address_line"
    t.string "city"
    t.string "country_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "position", default: 0
    t.index ["ancestry"], name: "index_product_categories_on_ancestry"
  end

  create_table "product_images", force: :cascade do |t|
    t.string "image"
    t.integer "position", default: 0
    t.boolean "current", default: true
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_images_on_product_id"
  end

  create_table "product_promotions", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "promotion_type", default: 0
    t.integer "position", default: 0
    t.boolean "current", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_promotions_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.text "description"
    t.bigint "product_category_id"
    t.integer "availability"
    t.decimal "price", precision: 12, scale: 2, default: "0.0"
    t.decimal "old_price", precision: 12, scale: 2
    t.integer "views_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "section_product_promotions", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "product_promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_promotion_id"], name: "index_section_product_promotions_on_product_promotion_id"
    t.index ["section_id"], name: "index_section_product_promotions_on_section_id"
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

  create_table "social_networks", force: :cascade do |t|
    t.integer "name", default: 0
    t.string "url"
    t.integer "position", default: 0
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

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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

  add_foreign_key "new_arrivals", "sections"
  add_foreign_key "offers", "sections"
  add_foreign_key "product_images", "products"
  add_foreign_key "product_promotions", "products"
  add_foreign_key "products", "product_categories"
  add_foreign_key "section_product_promotions", "product_promotions"
  add_foreign_key "section_product_promotions", "sections"
  add_foreign_key "special_offers", "sections"
  add_foreign_key "upcoming_offers", "sections"
end
