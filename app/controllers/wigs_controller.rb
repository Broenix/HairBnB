class WigsController < ApplicationController

  def show
    @wig = Wig.find(params[:id])
  end
end
