module Products::Cell::Elements
  class CategorySelector < Trailblazer::Cell
    attr_accessor :ul_class, :selected_category, :selected_ancestor_ids

    def initialize(*args)
      super(*args)
      @ul_class = 'choclate-categories'
      @selected_category = ProductCategory.find_by(id: options.dig(:url_params, :category_id))
      @selected_ancestor_ids = selected_category&.ancestor_ids
    end

    def category_tree(hash, options = {}, &block)
      style = options[:slided] ? 'display: block;' : ''
      category_list = "<ul class='#{ul_class}' style='#{style}'>"

      category_list << all_categories_tag if ul_class == 'choclate-categories'
      @ul_class = 'choclate-categories cat-list'

      hash.each { |object, children| category_list << category_tag(object, children, &block) }
      category_list << '</ul>'
    end

    def category_tag(object, children, &block)
      if children.size.positive?
        span_text = slided?(object.id) ? '-' : '+'
        "<li class='has-child'><span class='expand'>#{span_text}</span>" +
          capture(object, &block) + category_tree(children, { slided: slided?(object.id) }, &block) +
          '</li>'
      else
        '<li>' + capture(object, &block) + '</li>'
      end
    end

    def slided?(category_id)
      selected_ancestor_ids&.include?(category_id)
    end

    def category_link_tag(category)
      class_name = selected_category == category || slided?(category.id) ? 'selected' : ''
      link_to category.name, products_path(url_params(category.id)), class: class_name
    end

    def all_categories_tag
      '<li>' + (link_to 'Все категории', products_path(options[:url_params].except(:category_id))) + '</li>'
    end

    private

    def url_params(value)
      new_params = options[:url_params].deep_dup
      new_params[:category_id] = value
      new_params
    end
  end
end
