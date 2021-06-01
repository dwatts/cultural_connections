class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :date, :number_of_people, presence: true
  validates :number_of_people, numericality: { greater_than_or_equal_to: 0 }
end
