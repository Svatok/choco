class Offer < ApplicationRecord
  mount_uploader :image, OfferUploader

  belongs_to :section
end
