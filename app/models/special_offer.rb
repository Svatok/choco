class SpecialOffer < ApplicationRecord
  mount_uploader :image, SpecialOfferUploader

  belongs_to :section
end
