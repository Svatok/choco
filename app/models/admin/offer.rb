module Admin
  class Offer < ::Offer
    validates :title, :image, :url, presence: true
  end
end
