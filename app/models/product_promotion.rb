class ProductPromotion < ApplicationRecord
  enum promotion_type: %i[featured_products best_sellers]

  belongs_to :product
end
