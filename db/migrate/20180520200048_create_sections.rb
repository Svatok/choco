class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :status, default: 0
      t.integer :section_type, default: 0

      t.timestamps
    end
  end
end
