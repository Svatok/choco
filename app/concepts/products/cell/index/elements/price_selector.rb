module Products::Cell::Index::Elements
  class PriceSelector < Trailblazer::Cell
    def min_price
      Product.minimum(:price).floor
    end

    def max_price
      Product.maximum(:price).ceil
    end

    def price_from
      model[:price_from] || min_price
    end

    def price_to
      model[:price_to] || max_price
    end
  end
end
