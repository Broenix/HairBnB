class Booking < ApplicationRecord
  STATUS = %W[pending validated declined]

  belongs_to :user
  belongs_to :wig

  validates :status, presence: true, inclusion: { in: STATUS }

  def validated!
    update(status: "validated")
  end

  def declined!
    update(status: "declined")
  end
end
