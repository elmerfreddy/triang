class CreateGols < ActiveRecord::Migration
  def change
    create_table :gols do |t|
      t.belongs_to :match
      t.belongs_to :team
      t.integer :minutes
      t.string :comment

      t.timestamps
    end
    add_index :gols, [:match_id, :team_id]
  end
end
