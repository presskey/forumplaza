class AddPositionToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :position, :float
  end
end
