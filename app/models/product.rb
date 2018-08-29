class Product < ApplicationRecord
  enum availability: { for_order: 0, in_stock: 1, not_available: 2 }

  has_many :product_images, dependent: :destroy
  has_many :product_promotions, dependent: :destroy
  belongs_to :product_category

  acts_as_taggable_on :occasions, :types
end
