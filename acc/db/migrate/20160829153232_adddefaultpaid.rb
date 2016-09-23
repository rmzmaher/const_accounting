class Adddefaultpaid < ActiveRecord::Migration
  def change
  	change_column :buys, :paid, :float , default: 0
  end
end
