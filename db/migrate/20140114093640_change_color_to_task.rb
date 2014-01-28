class ChangeColorToTask < ActiveRecord::Migration
  def change
  	change_column :tasks, :color, :string
  end
end
