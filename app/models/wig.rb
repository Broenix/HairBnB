class Wig < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true

  validates :color, presence: true

  validates :lenght, presence: true, numericality: { only_integer: true }


  validates :description, presence: true
  validates :renting_price, presence: true, numericality: { only_integer: true }
end
