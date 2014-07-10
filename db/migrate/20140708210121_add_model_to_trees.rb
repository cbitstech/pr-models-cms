class AddModelToTrees < ActiveRecord::Migration
  def change
		def self.up
		  add_attachment :trees, :model
		end

		def self.down
		  remove_attachment :trees, :model
		end
  end
end
