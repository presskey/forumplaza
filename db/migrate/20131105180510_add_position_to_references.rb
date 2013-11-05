class AddPositionToReferences < ActiveRecord::Migration
  def change
    add_column :references, :position, :float
  end
end
