class Booking < ApplicationRecord
  STATUS = %W[pending validated declined]

  belongs_to :user
  belongs_to :wig

  validates :status, presence: true, inclusion: { in: STATUS }
end
