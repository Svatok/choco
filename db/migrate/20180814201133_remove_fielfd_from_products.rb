class RemoveFielfdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :new_product, :boolean, default: false
    remove_column :products, :best_seller, :boolean, default: false
    remove_column :products, :popular, :boolean, default: false
    remove_column :products, :featured, :boolean, default: false
  end
end
