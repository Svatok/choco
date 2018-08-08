class CreateProductPromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :product_promotions do |t|
      t.references :product, foreign_key: true
      t.integer :promotion_type, default: 0
      t.integer :position, default: 0
      t.boolean :current, default: false

      t.timestamps
    end
  end
end
