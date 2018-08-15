module Admin
  class ProductCategory < ::ProductCategory
    validates :name, presence: true
  end
end
