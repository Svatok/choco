class Products::Cell::Elements::ProductList < Trailblazer::Cell
  def view_type
    options[:view_type]
  end

  def class_name
    return 'product-list' if options[:view_type] == 'grid'
    'product-list-view'
  end
end
