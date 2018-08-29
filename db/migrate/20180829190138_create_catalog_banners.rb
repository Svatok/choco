class CreateCatalogBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :catalog_banners do |t|
      t.string :title
      t.string :short_description
      t.boolean :current, default: true
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
