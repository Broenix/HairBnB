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

  def new
    @wig = Wig.new
  end

  def create
    @wig = Wig.create(wig_params)
    @wig.user_id = current_user.id
    if @wig.save
      redirect_to wigs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def wig_params
    params.require(:wig).permit(
      :name,
      :description,
      :color,
      :renting_price,
      :photo
    )
  end
end
