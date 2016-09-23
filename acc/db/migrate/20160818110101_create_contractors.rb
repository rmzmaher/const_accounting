class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :phone
      t.string :type
      t.text :note

      t.timestamps null: false
    end
  end
end
