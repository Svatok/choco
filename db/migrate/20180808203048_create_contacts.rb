class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :address_line
      t.string :city
      t.string :country_name
      t.string :email

      t.timestamps
    end
  end
end
