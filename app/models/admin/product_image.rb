module Admin
  class ProductImage < ::ProductImage
    validates :image, presence: true
  end
end
