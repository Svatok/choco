class CreateSectionProductPromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :section_product_promotions do |t|
      t.references :section, foreign_key: true
      t.references :product_promotion, foreign_key: true

      t.timestamps
    end
  end
end
