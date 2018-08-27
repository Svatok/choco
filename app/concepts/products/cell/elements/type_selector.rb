class Products::Cell::Elements::TypeSelector < Trailblazer::Cell
  attr_accessor :selected_types

  def initialize(*args)
    super(*args)
    @selected_types = Array(options.dig(:url_params, :types))
  end

  def type_tag(type)
    content_tag(
      :input, type.name,
      type: 'checkbox',
      id: "checkbox-#{type.id}",
      checked: checked?(type.name),
      value: products_path(url_params(type.name)),
      onchange: 'document.location.href=this.value'
    )
  end

  private

  def checked?(name)
    selected_types.include?(name)
  end

  def url_params(name)
    new_params = options[:url_params].deep_dup
    new_params[:types] = checked?(name) ? (selected_types - [name]) : (selected_types + [name])
    new_params
  end
end
