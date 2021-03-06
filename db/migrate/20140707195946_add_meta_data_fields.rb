class AddMetaDataFields < ActiveRecord::Migration
  def change
		add_column :trees, :pr_id, :string
		add_column :trees, :model_type, :string
		add_column :trees, :parser, :string
		add_column :trees, :note, :string
		add_column :trees, :tree_amount, :integer
		remove_column :trees, :accuracy, :integer
		add_column :trees, :accuracy, :float
  end
end
