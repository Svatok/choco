class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
      t.string :question
      t.text :answer
      t.boolean :current, default: true
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
