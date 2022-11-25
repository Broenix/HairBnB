class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    if params[:query].present?
      sql_query = <<~SQL
      wigs.name ILIKE :query
      OR wigs.description ILIKE :query
      OR wigs.color ILIKE :query
    SQL
      @wigs = Wig.where(sql_query, query: "%#{params[:query]}%")
    else
      @wigs = Wig.all
    end
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
