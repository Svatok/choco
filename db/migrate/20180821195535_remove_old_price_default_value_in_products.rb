class RemoveOldPriceDefaultValueInProducts < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:products, :old_price, from: '0.0', to: nil)
  end
end
