class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :date, :number_of_people, presence: true
  validates :number_of_people, numericality: { greater_than: 0 }
end
