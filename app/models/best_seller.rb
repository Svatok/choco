class BestSeller < ApplicationRecord
  belongs_to :section
  belongs_to :product
end
