module Constants
  module Products
    NO_IMAGE_URL = '/images/no-image.jpg'.freeze

    PAGE_SIZES = [12, 15, 18].freeze

    SCOPE_NAMES = {
      'popular' => 'Популярные',
      'new' => 'Новые',
      'most_view' => 'Самые просматриваемые',
      'min_price_first' => 'От дешевых к дорогим',
      'max_price_first' => 'От дорогих к дешевым'
    }.freeze

    VIEW_TYPES = %w[grid list].freeze
  end
end
