module Lib::Cell
  class ProductPreview < Trailblazer::Cell
    def name
      "<strong>#{model.name}</strong> - #{model.short_description}"
    end

    def price
      "#{model.price} грн"
    end
  end
end
