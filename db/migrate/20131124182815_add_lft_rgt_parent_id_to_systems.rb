class AddLftRgtParentIdToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :parent_id, :integer
    add_column :systems, :lft, :integer
    add_column :systems, :rgt, :integer
  end
end
