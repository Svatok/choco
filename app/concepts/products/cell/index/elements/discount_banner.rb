module Products::Cell::Index::Elements
  class DiscountBanner < Trailblazer::Cell
    property :title
    property :short_description
    property :url
    property :image

    def button
      return unless url
      link_to 'Купить сейчас', url, class: 'btn btn-default'
    end
  end
end
