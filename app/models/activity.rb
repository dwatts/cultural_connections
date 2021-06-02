class Activity < ApplicationRecord
  belongs_to :user
  has_many :activity_categories
  has_many :categories, through: :activity_categories
  has_many :favorites
  has_many :users, through: :favorites
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews
  has_many :users, through: :reviews
  validates :name, :address, :description, presence: true
  validates :name, uniqueness: true
  validates :price, :available_spots, :duration, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 20 }
end
