class Team < ActiveRecord::Base
  attr_accessible :foundation_date, :name

  validates :name, presence: true
end
