class CreateFeaturedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :featured_products do |t|
      t.references :section, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
