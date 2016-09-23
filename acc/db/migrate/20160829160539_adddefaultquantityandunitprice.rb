class Adddefaultquantityandunitprice < ActiveRecord::Migration
  def change
  	change_column :buys, :quantity, :integer , default: 0
  	change_column :buys, :price_per_unit, :float , default: 0
  end
end