class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.date :foundation_date

      t.timestamps
    end
  end
end
