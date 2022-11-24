class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @bookings_renter = current_user.booking_as_a_renter
    @bookings_owner = current_user.booking_as_a_owner
  end

  def show
    @bookings = Wig.find(params[:id])
  end
end
