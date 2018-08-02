module LandingPage::Cell::Sections
  class BestSellerProducts < Trailblazer::Cell
    property :title

    def products
      model.best_sellers.order(:position)
    end
  end
end
