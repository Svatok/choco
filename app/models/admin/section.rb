module Admin
  class Section < ::Section
    validates :title, :status, :section_type, presence: true

    has_many :admin_offers, class_name: '::Admin::Offer', dependent: :destroy
    has_one :admin_special_offer, class_name: '::Admin::SpecialOffer', dependent: :destroy

    accepts_nested_attributes_for :admin_offers, allow_destroy: true
    accepts_nested_attributes_for :admin_special_offer, allow_destroy: true

    def display_name
      "#{section_type} section".upcase
    end
  end
end
