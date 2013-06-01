class Match < ActiveRecord::Base
  belongs_to :team
  belongs_to :team_vs, class_name: 'Team'
  
  attr_accessible :match_date, :team_id, :team_vs_id

  def team_name
  	team.name if team.present?
  end

  def team_vs_name
  	team_vs.name if team_vs.present?
  end
end
