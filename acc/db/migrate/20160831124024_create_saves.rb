class CreateSaves < ActiveRecord::Migration
  def change
    create_table :saves do |t|
      t.integer :cash
      t.date :date
      t.string :sheet
      t.text :note

      t.timestamps null: false
    end
  end
end
