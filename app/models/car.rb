class Car < ActiveRecord
  belongs_to :user, foreign_key: 'user_id'

  validates :user, presence: true
end
