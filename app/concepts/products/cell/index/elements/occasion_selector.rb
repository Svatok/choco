class Products::Cell::Index::Elements::OccasionSelector < Trailblazer::Cell
  attr_accessor :selected_occasions

  def initialize(*args)
    super(*args)
    @selected_occasions = Array(options.dig(:url_params, :occasions))
  end

  def occasion_tag(occasion)
    content_tag(
      :input, occasion.name,
      type: 'checkbox',
      id: "checkbox-#{occasion.id}",
      checked: checked?(occasion.name),
      value: products_path(url_params(occasion.name)),
      onchange: 'document.location.href=this.value'
    )
  end

  private

  def checked?(occasions_name)
    selected_occasions.include?(occasions_name)
  end

  def url_params(occasions_name)
    new_params = options[:url_params].deep_dup
    new_params[:occasions] = if checked?(occasions_name)
                               selected_occasions - [occasions_name]
                             else
                               selected_occasions + [occasions_name]
                             end
    new_params
  end
end
