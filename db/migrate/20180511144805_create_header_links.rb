class CreateHeaderLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :header_links do |t|
      t.string :title
      t.string :url
      t.integer :rank, default: 0

      t.timestamps
    end
  end
end
