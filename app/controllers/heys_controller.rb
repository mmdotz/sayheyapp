class HeysController < ApplicationController
  def index
    page = parems([:page]).to_i
    heys = Hey.all
    render locals: { heys, page  }
  end


  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
