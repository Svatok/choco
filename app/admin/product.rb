ActiveAdmin.register Admin::Product, as: 'Product' do
  permit_params [
    :name, :short_description, :description, :product_category_id, :availability, :price, :old_price,
    :occasion_list, :type_list, admin_product_images_attributes: %i[id image current]
  ]

  filter :product_category
  filter :name_or_short_description_or_description_cont, label: 'Product contains'
  filter :availability, as: :select, collection: Product.availabilities
  filter :price
  filter :old_price
  filter :views_count
  filter :with_occasion, as: :check_boxes, collection: -> { OccasionsQuery.call.map(&:name) }
  filter :with_type, as: :check_boxes, collection: -> { TypesQuery.call.map(&:name) }

  index do
    selectable_column
    column(:image) do |product|
      image_url = product.product_images.order(:position).take&.image&.url || Constants::Products::NO_IMAGE_URL
      image_tag(image_url, height: 60)
    end
    column :name
    column :short_description
    column :product_category
    column :availability
    column :price
    column :old_price
    column :views_count
    actions
  end

  show do |product|
    attributes_table do
      row :name
      row :short_description
      row :description
      row :product_category
      row :availability
      row :price
      row :old_price
      row(:occasions) { product.occasion_list.map(&:titleize).join(', ') }
      row(:types) { product.type_list.map(&:titleize).join(', ') }
    end

    panel link_to 'IMAGES', admin_product_product_images_path(product_id: product.id) do
      if product.product_images.present?
        table_for product.product_images.order(:position), sortable: true do
          column(:image) { |product_image| image_tag(product_image.image.url, height: 70) }
          column :current
          column('Actions') do |product_image|
            span link_to 'View', admin_product_product_image_path(product_id: product.id, id: product_image.id)
            span link_to 'Edit', edit_admin_product_product_image_path(
              product_id: product.id, id: product_image.id
            )
            span link_to 'Delete', admin_product_product_image_path(
              product_id: product.id, id: product_image.id
            ), method: :delete, data: { confirm: 'Are you sure?' }
          end
        end
      else
        link_to 'Create new one', new_admin_product_product_image_path(product_id: product.id)
      end
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Product' do
      f.input :name
      f.input :short_description
      f.input :description
      f.input :product_category
      f.input :availability
      f.input :price
      f.input :old_price
      f.input :occasion_list, as: :tags, collection: OccasionsQuery.call.map(&:name)
      f.input :type_list, as: :tags, collection: TypesQuery.call.map(&:name)
    end
    f.has_many :admin_product_images, new_record: true do |pi|
      pi.input :image, as: :file
      pi.input :current
    end
    f.actions
  end
end
