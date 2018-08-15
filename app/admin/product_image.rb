ActiveAdmin.register Admin::ProductImage, as: 'ProductImage' do
  belongs_to :product

  menu false
  config.batch_actions = false
  config.filters = false

  permit_params :image, :position, :current

  actions :all
  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label(:image) do |product_image|
      current_label = product_image.current ? ' current' : nil
      image_tag(product_image.image.url, height: 100) + current_label
    end
    actions
  end

  show do
    attributes_table do
      row(:image) { |product_image| image_tag(product_image.image.url) }
      row :current
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Product Image' do
      f.input :image, as: :file
      f.input :current
    end
    f.actions
  end
end
