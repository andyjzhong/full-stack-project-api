class Car < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
end
