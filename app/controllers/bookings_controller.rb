class BookingsController < ApplicationController
  def index
    @bookings_owner = current_user.bookings_as_a_owner
    @bookings_renter = current_user.bookings_as_a_renter
    # @bookings = Booking.all
  end

  def show

    @bookings = Wig.find(params[:id])
  end

  # private

  # def set_wig
  #   @wig = Wig.find(params[:id])
  # end
end
