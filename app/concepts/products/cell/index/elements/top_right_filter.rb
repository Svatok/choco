class Products::Cell::Index::Elements::TopRightFilter < Trailblazer::Cell
  def page_sizes
    Constants::Products::PAGE_SIZES
  end

  def page_size_tag(size)
    open_tag = "<option value='#{products_path(url_params(size))}'"
    open_tag += options.dig(:url_params, 'page', 'size') == size ? ' selected>' : '>'
    "#{open_tag}#{size}</option>"
  end

  private

  def url_params(value)
    new_params = options[:url_params].deep_dup
    new_params[:page][:size] = value
    new_params
  end
end
