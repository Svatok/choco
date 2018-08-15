module Lib::Cell
  class ProductPreview < Trailblazer::Cell
    def image
      image_url = model.product_images.order(:position).take&.image&.url || Constants::Products::NO_IMAGE_URL
      image_tag(image_url)
    end

    def name
      "<strong>#{model.name}</strong> - #{model.short_description}"
    end

    def price
      "#{model.price} грн"
    end
  end
end
