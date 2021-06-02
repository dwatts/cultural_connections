class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :activities, through: :favorites
  has_many :bookings
  has_many :activities, through: :bookings
  has_many :reviews
  has_many :activities, through: :reviews
  has_many :provided_activities, class_name: 'Activity', foreign_key: :user_id
  validates :username, presence: true
  validates :username, uniqueness: true
end
