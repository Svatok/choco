module Admin
  class Product < ::Product
    has_many :admin_product_images, class_name: '::Admin::ProductImage', dependent: :destroy

    accepts_nested_attributes_for :admin_product_images, allow_destroy: true

    scope(:with_type_in, ->(*types) { tagged_with(types, on: :types, any: true) })
    scope(:with_occasion_in, ->(*occasions) { tagged_with(occasions, on: :occasions, any: true) })

    def self.ransackable_scopes(_auth_object = nil)
      %i[with_type_in with_occasion_in]
    end
  end
end
