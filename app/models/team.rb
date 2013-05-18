class Team < ActiveRecord::Base
  attr_accessible :foundation_date, :name, :category_id

  belongs_to :category

  validates :name, presence: true

  def category_name
    category.name if category.present?
  end
end
