class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings_as_a_renter, class_name: "Booking", dependent: :destroy
  has_many :bookings_as_a_owner, class_name: "Booking", through: :wigs, source: :bookings
  has_many :wigs, dependent: :destroy

  # validates :name, presence: true
end
