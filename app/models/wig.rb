class Wig < ApplicationRecord
  COLOR = %W[blanche châtain rose jaune noire]

  has_one_attached :photo

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :color, presence: true, inclusion: { in: COLOR }

  # validates :lenght, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  validates :renting_price, presence: true, numericality: { only_integer: true }
end
