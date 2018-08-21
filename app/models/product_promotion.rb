class ProductPromotion < ApplicationRecord
  enum promotion_type: %i[featured_products best_sellers popular new_products]

  belongs_to :product
end
