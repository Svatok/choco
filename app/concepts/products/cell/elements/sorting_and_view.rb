class Products::Cell::Elements::SortingAndView < Trailblazer::Cell
  def scope_keys
    Constants::Products::SCOPE_NAMES.keys
  end

  def sort_option_tag(scope_key)
    open_tag = "<option value='#{products_path(url_params(scope_key))}'"
    open_tag += options.dig(:url_params, 'scope') == scope_key ? ' selected>' : '>'
    "#{open_tag}#{Constants::Products::SCOPE_NAMES[scope_key]}</option>"
  end

  private

  def url_params(value)
    new_params = options[:url_params].deep_dup
    new_params[:scope] = value
    new_params
  end
end
