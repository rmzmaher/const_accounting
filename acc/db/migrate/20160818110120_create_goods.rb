class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.string :unit
      t.text :note

      t.timestamps null: false
    end
  end
end
