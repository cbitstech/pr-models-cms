class AddModelToTree < ActiveRecord::Migration
  def change
		add_column :trees, :model, :string
  end
end
