class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.float :paid
      t.float :price_per_unit
      t.integer :quantity
      t.date :date
      t.text :note
      t.references :good, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
