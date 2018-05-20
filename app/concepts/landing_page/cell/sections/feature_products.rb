module LandingPage::Cell::Sections
  class FeatureProducts < Trailblazer::Cell
    property :title

    def products
      model.products.order(:position)
    end
  end
end
