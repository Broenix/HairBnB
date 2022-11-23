class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @wigs = Wig.all
  end


