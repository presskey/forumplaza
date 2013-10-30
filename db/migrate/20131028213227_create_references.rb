class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
