class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.text :description
      t.string :kind
      t.timestamps
    end
  end
end
