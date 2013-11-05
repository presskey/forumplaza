class AddCompanyIdToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :company_id, :integer
    add_index :systems, :company_id
  end
end
