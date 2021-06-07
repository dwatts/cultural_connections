class Review < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :activity
  validates :stars, presence: true
  validates :stars, inclusion: 1..5
end
