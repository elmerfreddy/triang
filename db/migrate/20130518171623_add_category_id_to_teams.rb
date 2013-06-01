class AddCategoryIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :category_id, :integer
    add_index :teams, :category_id
  end
end
