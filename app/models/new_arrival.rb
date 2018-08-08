class NewArrival < ApplicationRecord
  mount_uploader :image, NewArrivalUploader

  belongs_to :section
end
