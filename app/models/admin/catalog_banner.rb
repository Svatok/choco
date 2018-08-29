module Admin
  class CatalogBanner < ::CatalogBanner
    validates :title, :short_description, :image, presence: true
  end
end
