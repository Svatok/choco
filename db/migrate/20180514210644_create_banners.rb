class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :position, default: 0
      t.boolean :current, default: false

      t.timestamps
    end
  end
end
