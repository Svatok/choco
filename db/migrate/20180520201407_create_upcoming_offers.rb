class CreateUpcomingOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :upcoming_offers do |t|
      t.string :short_title
      t.string :title
      t.string :description
      t.string :url
      t.string :image
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
