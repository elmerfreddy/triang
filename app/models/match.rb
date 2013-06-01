class Match < ActiveRecord::Base
  default_scope order('match_date DESC')

  belongs_to :team
  belongs_to :team_vs, class_name: 'Team'

  has_many :gols, dependent: :destroy
  accepts_nested_attributes_for :gols, reject_if: :all_blank, allow_destroy: true

  attr_accessible :gols_attributes, :match_date, :team_id, :team_vs_id

  def get_gols(team)
    gols.where(team_id: team.id).count
  end

  def team_name
    team.name if team.present?
  end

  def team_vs_name
    team_vs.name if team_vs.present?
  end
end
