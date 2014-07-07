class CreateTreeFiles < ActiveRecord::Migration
  def change
    create_table :tree_files do |t|
      t.binary :model
      t.references :tree, index: true

      t.timestamps
    end
  end
end
