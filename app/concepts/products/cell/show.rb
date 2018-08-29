module Products::Cell
  class Show < Pro::Cell::Layout
    property :name
    property :short_description
    property :description

    def body_class
      'inner-page'
    end

    def price
      "#{model.price} грн"
    end

    def old_price
      "#{model.old_price} грн" if model.old_price
    end

    def title_image_url
      model.product_images.order(:position).take&.image&.url || Constants::Products::NO_IMAGE_URL
    end

    def image
      image_tag(title_image_url, height: '300px', id: 'image_previewer')
    end

    def images
      model.product_images.order(:position)
    end

    def availability
      {
        'in_stock' => 'В наличии',
        'not_available' => 'Нет в продаже',
        'for_order' => 'Под заказ'
      }[model.availability]
    end

    def new_product?
      model.product_promotions.new_products.present?
    end
  end
end
