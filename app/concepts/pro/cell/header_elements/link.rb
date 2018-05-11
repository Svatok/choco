module Pro::Cell::HeaderElements
  class Link < Trailblazer::Cell
    def sublinks
      model.children
    end

    def header_link
      link_to title, model.url
    end

    def title
      model.title.split.map { |word| "<span>#{word.capitalize}</span>" }.join
    end
  end
end
