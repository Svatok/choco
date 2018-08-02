module Admin
  class SpecialOffer < ::SpecialOffer
    validates :title, :short_description, :image, :url, presence: true
  end
end
