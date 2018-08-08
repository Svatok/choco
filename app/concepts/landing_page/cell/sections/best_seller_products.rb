module LandingPage::Cell::Sections
  class BestSellerProducts < Trailblazer::Cell
    property :title

    def products
      model.best_sellers_promotions.where(current: true).order(:position).map(&:product)
    end
  end
end
