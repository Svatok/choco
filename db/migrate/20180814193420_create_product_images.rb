class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.string :image
      t.integer :position, default: 0
      t.boolean :current, default: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
