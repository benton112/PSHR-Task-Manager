class AddNameSurnameFathernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :fathername, :string
  end
end
