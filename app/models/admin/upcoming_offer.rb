module Admin
  class UpcomingOffer < ::UpcomingOffer
    validates :short_title, :title, :description, :image, :url, presence: true
  end
end
