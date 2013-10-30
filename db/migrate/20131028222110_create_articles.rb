class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.boolean :visible, null: false, default: false
      t.string :kind
      t.timestamps
    end
  end
end
