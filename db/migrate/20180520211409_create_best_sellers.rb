class CreateBestSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :best_sellers do |t|
      t.references :section, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
