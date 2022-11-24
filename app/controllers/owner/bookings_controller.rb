class Owner::BookingsController < ApplicationController

  def accept
    @booking = Booking.find(params[:id])

    if @booking.validated!
      redirect_to bookings_path, notice: 'booking accepted'
    else
      redirect_to bookings_path, notice: 'booking could not be accepted - please try again'
    end
  end

  def declined
    @booking = Booking.find(params[:id])
    if @booking.declined!
      redirect_to @booking, notice: 'Booking rejected'
    else
      redirect_to @booking, notice: 'Booking could not be rejected - please try again'
    end
  end
end
