class CreateSiteLogos < ActiveRecord::Migration[5.2]
  def change
    create_table :site_logos do |t|
      t.string :logo
      t.boolean :current, default: false

      t.timestamps
    end
  end
end
