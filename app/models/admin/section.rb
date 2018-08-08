module Admin
  class Section < ::Section
    validates :status, :section_type, presence: true

    has_many :admin_offers, class_name: '::Admin::Offer', dependent: :destroy
    has_one :admin_special_offer, class_name: '::Admin::SpecialOffer', dependent: :destroy
    has_one :admin_upcoming_offer, class_name: '::Admin::UpcomingOffer', dependent: :destroy
    has_many :admin_new_arrivals, class_name: '::Admin::NewArrival', dependent: :destroy

    has_many :admin_section_product_promotions, class_name: '::Admin::SectionProductPromotion', dependent: :destroy

    accepts_nested_attributes_for :admin_offers, allow_destroy: true
    accepts_nested_attributes_for :admin_special_offer, allow_destroy: true
    accepts_nested_attributes_for :admin_upcoming_offer, allow_destroy: true
    accepts_nested_attributes_for :admin_section_product_promotions, allow_destroy: true
    accepts_nested_attributes_for :admin_new_arrivals, allow_destroy: true

    def display_name
      "#{section_type} section".upcase
    end
  end
end
