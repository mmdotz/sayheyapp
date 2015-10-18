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

  def new
    hey = Hey.new
    render locals: { hey: hey }
  end

  def create
    hey = Hey.new
    hey.body = params.fetch(:hey).fetch(:body)
    hey.sayer_id = params.fetch(:hey).fetch(:sayer_id)
    hey.save
      if hey.save
        redirect_to heys_path
      else
        redirect_to :new
      end
  end

  def update
  end

  def destroy
  end

end
