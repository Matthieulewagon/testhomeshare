class AddColToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :check, :string
    add_column :users, :dietary, :string
    add_column :users, :members, :string
    add_column :users, :prices, :string
    add_column :users, :friend_name, :string
    add_column :users, :friend_address, :string
  end
end
