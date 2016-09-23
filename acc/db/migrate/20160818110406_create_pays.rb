class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.float :amount
      t.date :date
      t.text :note
      t.references :contractor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
