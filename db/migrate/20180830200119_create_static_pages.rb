class CreateStaticPages < ActiveRecord::Migration[5.2]
  def change
    create_table :static_pages do |t|
      t.integer :page
      t.string :title
      t.text :body
      t.boolean :current, default: true

      t.timestamps
    end
  end
end
