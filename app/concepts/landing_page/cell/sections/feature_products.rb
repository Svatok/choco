module LandingPage::Cell::Sections
  class FeatureProducts < Trailblazer::Cell
    property :title

    def products
      model.featured_products_promotions.where(current: true).order(:position).map(&:product)
    end
  end
end
