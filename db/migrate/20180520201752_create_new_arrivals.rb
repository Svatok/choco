class CreateNewArrivals < ActiveRecord::Migration[5.2]
  def change
    create_table :new_arrivals do |t|
      t.string :url
      t.string :image
      t.integer :position, default: 0
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
