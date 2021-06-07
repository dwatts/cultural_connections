class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites, dependent: :destroy
  has_many :activities, through: :favorites
  has_many :bookings, dependent: :destroy
  has_many :activities, through: :bookings
  has_many :reviews, dependent: :destroy
  has_many :activities, through: :reviews
  has_many :provided_activities, class_name: 'Activity', foreign_key: :user_id, dependent: :destroy
  #validates :username, presence: true
  #validates :username, uniqueness: true
end
