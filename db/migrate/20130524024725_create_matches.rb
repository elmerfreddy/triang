class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.belongs_to :team
      t.belongs_to :team_vs
      t.date :match_date

      t.timestamps
    end
    add_index :matches, :team_id
    add_index :matches, :team_vs_id
  end
end
