class RemoveExtraField < ActiveRecord::Migration
  def change
		remove_column :trees, :float
  end
end
