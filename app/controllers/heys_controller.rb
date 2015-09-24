class HeysController < ApplicationController
  def index
    # params.inspect
    page = (params[:page]).to_i
    heys  = Hey.limit(25).offset(page * 10)
    render locals: { heys: heys, page: page }
  end


  def show
    hey = Hey.find(params[:id])
    render locals: { hey: hey }
  end

  def create
  end

  def update
  end

  def destroy
  end

end
