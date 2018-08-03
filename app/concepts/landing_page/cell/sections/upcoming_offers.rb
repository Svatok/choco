module LandingPage::Cell::Sections
  class UpcomingOffers < Trailblazer::Cell
    property :upcoming_offer

    def buy_now_link
      link_to 'КУПИТЬ СЕЙЧАС', upcoming_offer.url, class: 'btn btn-info'
    end
  end
end
