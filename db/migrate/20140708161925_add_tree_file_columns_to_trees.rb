class AddTreeFileColumnsToTrees < ActiveRecord::Migration
  def self.up
    add_attachment :trees, :tree_file
  end

  def self.down
    remove_attachment :trees, :tree_file
  end
end
