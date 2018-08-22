module Lib::Cell
  class ProductGridPreview < Trailblazer::Cell
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

    def old_price
      "#{model.old_price} грн" if model.old_price
    end

    def discount
      return unless model.old_price
      percentage = ((1 - model.price / model.old_price) * 100.0).round
      "#{percentage}%"
    end

    def new_product?
      model.product_promotions.new_products.present?
    end

    # def new_product?
    #   model.product_promotions.new_products.present?
    # end
  end
end
