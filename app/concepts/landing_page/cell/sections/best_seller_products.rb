module LandingPage::Cell::Sections
  class BestSellerProducts < Trailblazer::Cell
    property :title

    def products
      model.products.order(:position)
    end
  end
end
