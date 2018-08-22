class Products::Cell::Elements::SortingAndView < Trailblazer::Cell
  def scope_keys
    Constants::Products::SCOPE_NAMES.keys
  end

  def sort_option_tag(scope_key)
    open_tag = "<option value='#{products_path(url_params(scope_key))}'"
    open_tag += options.dig(:url_params, 'scope') == scope_key ? ' selected>' : '>'
    "#{open_tag}#{Constants::Products::SCOPE_NAMES[scope_key]}</option>"
  end

  def view_types
    Constants::Products::VIEW_TYPES
  end

  def view_type_icon(view_type)
    return '<i class="fa fa-th-large" aria-hidden="true"></i>' if view_type == 'grid'
    return '<i class="fa fa-list" aria-hidden="true"></i>' if view_type == 'list'
  end

  def view_type_link(view_type)
    link_to view_type_icon(view_type), products_path(options[:url_params].merge(view_type: view_type))
  end

  def view_type_class(view_type)
    return unless options[:view_type] == view_type
    'active'
  end

  private

  def url_params(value)
    new_params = options[:url_params].deep_dup
    new_params[:scope] = value
    new_params
  end
end
