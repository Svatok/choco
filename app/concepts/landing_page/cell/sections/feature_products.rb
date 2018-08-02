module LandingPage::Cell::Sections
  class FeatureProducts < Trailblazer::Cell
    property :title

    def products
      model.featured_products.order(:position)
    end
  end
end
