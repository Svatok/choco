module LandingPage::Cell::Sections
  class Offers < Trailblazer::Cell
    property :title
    property :special_offer

    def special_offer_image_url
      model.special_offer&.image&.url || ''
    end

    def offers
      model.offers.order(:position)
    end

    def buy_now_link
      link_to 'КУПИТЬ СЕЙЧАС', special_offer&.url, class: 'btn btn-info'
    end
  end
end
