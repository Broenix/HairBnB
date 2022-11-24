class BookingsController < ApplicationController
  def index
    @bookings_owner = current_user.bookings_as_a_owner
    @bookings_renter = current_user.bookings_as_a_renter
    # @bookings = Booking.all
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.wig_id = params[:wig_id]
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(
      :start_date,
      :end_date)
  end

  # private

  # def set_wig
  #   @wig = Wig.find(params[:id])
  # end
end
