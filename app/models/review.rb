class Review < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :stars, presence: true
  validates :stars, inclusion: 1..5
end
