class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :detail
      t.timestamp :begin
      t.timestamp :end
      t.integer :status

      t.timestamps
    end
  end
end
