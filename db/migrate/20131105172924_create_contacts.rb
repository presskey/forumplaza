class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :post
      t.string :phone
      t.string :email
      t.string :photo
      t.float  :position

      t.timestamps
    end
  end
end
