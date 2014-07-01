class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :author
      t.integer :accuracy

      t.timestamps
    end
  end
end
