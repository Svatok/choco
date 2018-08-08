class UpcomingOffer < ApplicationRecord
  mount_uploader :image, UpcomingOfferUploader

  belongs_to :section
end
