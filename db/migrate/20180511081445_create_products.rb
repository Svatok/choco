class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :short_description
      t.text :description
      t.references :product_category, foreign_key: true
      t.integer :availability
      t.decimal :price, precision: 12, scale: 2, default: '0.0'
      t.decimal :old_price, precision: 12, scale: 2, default: '0.0'
      t.integer :views_count, default: 0
      t.boolean :new_product, default: false
      t.boolean :best_seller, default: false
      t.boolean :popular, default: false
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
