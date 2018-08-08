class Banner < ApplicationRecord
  mount_uploader :image, BannerUploader

  scope(:current, -> { where(current: true) })
end
