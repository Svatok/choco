module Admin
  class Product < ::Product
    has_many :admin_product_images, class_name: '::Admin::ProductImage', dependent: :destroy

    accepts_nested_attributes_for :admin_product_images, allow_destroy: true
  end
end
