class AddColorToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :color, :integer
  end
end
