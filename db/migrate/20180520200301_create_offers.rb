class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :image
      t.string :url
      t.integer :position, default: 0
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
