class Owner::WigsController < ApplicationController

  def index
    @wigs = current_user.wigs
  end

end
