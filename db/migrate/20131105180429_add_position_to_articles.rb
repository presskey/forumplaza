class AddPositionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :position, :float
  end
end
