class DropTreeFiles < ActiveRecord::Migration
  def change

	def up
		  drop_table :tree_files
		end

		def down
		      create_table :tree_files do |t|
      t.binary :model
      t.references :tree, index: true

      t.timestamps
		end
	end

  end
end
