class Wig < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :name, lenght: { in: 5..40 }

  validates :color, presence: true

  validates :lenght, presence: true


  validates :description, presence: true
  validates :renting_price, presence: true
end
