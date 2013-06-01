class Gol < ActiveRecord::Base
  belongs_to :team
  belongs_to :match

  attr_accessible :team_id, :minutes, :comment
end
