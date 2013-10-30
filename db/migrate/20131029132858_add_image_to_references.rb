class AddImageToReferences < ActiveRecord::Migration
  def change
    add_column :references, :image, :string
  end
end
