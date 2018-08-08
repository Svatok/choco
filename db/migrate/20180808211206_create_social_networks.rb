class CreateSocialNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :social_networks do |t|
      t.integer :name, default: 0
      t.string :url
      t.integer :position, default: 0

      t.timestamps
    end
  end
end