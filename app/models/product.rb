class Product < ApplicationRecord
  enum availability: %i[in_stock not_available expected]

  has_many :product_images, dependent: :destroy
  belongs_to :product_category

  scope(:featured, -> { where(featured: true) })
  scope(:best_seller, -> { where(best_seller: true) })
end
