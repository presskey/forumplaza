class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index :texts, :name, unique: true
  end
end
