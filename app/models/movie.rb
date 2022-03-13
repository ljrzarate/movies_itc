class Movie < ApplicationRecord
  extend FriendlyId

  has_many :castings
  has_many :actors, through: :castings
  has_many :producers, through: :castings
  has_many :directors, through: :castings

  validates :title, :release_year, presence: true
  accepts_nested_attributes_for :actors, :producers, :directors

  friendly_id :title, use: :slugged

  def release_year_roman
    release_year.year.to_roman
  end

  def to_param
    [id, title.parameterize].join("-")
  end
end
