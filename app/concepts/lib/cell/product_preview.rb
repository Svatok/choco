module Lib::Cell
  class ProductPreview < Trailblazer::Cell
    def class_name
      options[:class_name] || 'col-md-3 col-sm-6'
    end

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
