class Activity < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_one_attached :banner_photo
  has_many :activity_categories
  has_many :activity_categories, dependent: :destroy
  has_many :categories, through: :activity_categories
  has_many :favorites
  has_many :users, through: :favorites
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews
  has_many :users, through: :reviews
  validates :name, :address, :description, presence: true
  validates :name, uniqueness: true
  validates :price, :available_spots, :duration, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 20 }
  validates :photos, limit: { min: 1, max: 5, message: "have a maximum of 5." }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
