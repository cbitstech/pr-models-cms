class DropTreefiles < ActiveRecord::Migration
  def change
		 drop_table :tree_files
  end
end
