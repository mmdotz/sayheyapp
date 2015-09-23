class SayersController < ApplicationController
  def index
    render locals: { sayers: Sayer.all }
  end

  def show
    render locals: { sayer: Sayer.find(params[:id]) }
  end

  def create
  end

  def update
  end

  def destroy
  end
end
