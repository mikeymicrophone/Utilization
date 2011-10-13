class UsersHaveCurrentCity < ActiveRecord::Migration
  def up
    add_column :users, :city, :string
  end

  def down
    remove_column :users, :city
  end
end
