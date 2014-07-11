class AddFileColumnToTrees < ActiveRecord::Migration
    def self.up
    add_attachment :trees, :file
  end

  def self.down
    remove_attachment :trees, :file
  end
end
