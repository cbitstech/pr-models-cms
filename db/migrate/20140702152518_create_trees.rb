class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :author
      t.string :accuracy
      t.string :float

      t.timestamps
    end
  end
end
