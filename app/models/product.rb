class Product < ApplicationRecord
  enum availability: %i[in_stock not_available expected]

  has_many :product_images, dependent: :destroy
  has_many :product_promotions, dependent: :destroy
  belongs_to :product_category
end
