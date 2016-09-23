class Changecolumntypename < ActiveRecord::Migration
  def change
  	rename_column :contractors, :type, :cause
  end
end
