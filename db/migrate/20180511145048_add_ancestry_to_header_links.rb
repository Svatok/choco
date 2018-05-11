class AddAncestryToHeaderLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :header_links, :ancestry, :string
    add_index :header_links, :ancestry
  end
end
