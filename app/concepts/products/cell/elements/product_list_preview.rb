class Products::Cell::Elements::ProductListPreview < Lib::Cell::ProductGridPreview
  def description
    model.description.size > 150 ? model.description[0..149] + ' ...' : model.description
  end

  def image
    image_url = model.product_images.order(:position).take&.image&.url || Constants::Products::NO_IMAGE_URL
    image_tag(image_url, class: 'img-responsive')
  end
end
