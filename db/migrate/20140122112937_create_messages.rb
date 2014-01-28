class CreateMessages < ActiveRecord::Migration
  def change
  	drop_table :messages
    create_table :messages do |t|
      t.string :text
      t.references :from, index: true
      t.references :to, index: true

      t.timestamps
    end
  end
end
