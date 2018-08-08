class CreateSpecialOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :special_offers do |t|
      t.string :title
      t.string :short_description
      t.string :url
      t.string :image
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
