class AddAttrToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :address, :string
    add_column :users, :zip, :string
    add_column :users, :state, :string
    add_column :users, :organisation, :string
    add_column :users, :country, :string
    add_column :users, :telephone, :string
    add_column :users, :mobile, :string
    add_column :users, :city, :string
  end
end
