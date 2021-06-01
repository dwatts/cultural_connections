class Activity < ApplicationRecord
  belongs_to :user
  has many :activity_categories
  has_many :categories, through: :activity_categories
  has_many :favorites
  has_many :users, through: :favorites
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews
  has_many :users, through: :reviews
end
