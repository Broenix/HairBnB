class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show


  def index
    @wigs = Wig.all
  end

  def show
    @wig = Wig.find(params[:id])
    @booking = Booking.new
  end
end
