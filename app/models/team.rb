class Team < ActiveRecord::Base
  attr_accessible :foundation_date, :name, :category_id

  belongs_to :category

  has_many :matches
  has_many :team_vs, class_name: 'Team', through: :matches

  validates :name, presence: true

  def category_name
    category.name if category.present?
  end

  def matches_count
    Match.where("team_id = ? OR team_vs_id = ?", id, id).count
  end
end
