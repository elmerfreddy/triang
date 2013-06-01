class Match < ActiveRecord::Base
  belongs_to :team
  belongs_to :team_vs, class_name: 'Team'
  
  attr_accessible :match_date
end
