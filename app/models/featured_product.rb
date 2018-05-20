class FeaturedProduct < ApplicationRecord
  belongs_to :section
  belongs_to :product
end
