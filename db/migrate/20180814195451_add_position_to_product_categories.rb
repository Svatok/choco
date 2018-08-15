class AddPositionToProductCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :product_categories, :position, :integer, default: 0
  end
end
