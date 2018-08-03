ActiveAdmin.register Admin::ProductPromotion, as: 'ProductPromotion' do
  permit_params :promotion_type, :product_id, :position, :current

  filter :current
  filter :product

  scope :featured_products
  scope :best_sellers

  actions :all
  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label(:title) do |product_promotion|
      "#{product_promotion.promotion_type.upcase} | #{product_promotion.product.name}" \
      "#{product_promotion.current ? ' | Current' : ''}"
    end
    actions
  end

  show do
    attributes_table do
      row :promotion_type
      row :product
      row :current
    end
  end

  form do |f|
    f.inputs do
      f.input :promotion_type
      f.input :product
      f.input :current
    end
    f.actions
  end
end
