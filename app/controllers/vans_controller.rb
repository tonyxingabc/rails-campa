class VansController < ApplicationController
  def index
    @vans = Van.where(location: params[:location])
  end

  def show
    @van = Van.find(params[:id])
  end

  def create

  end
end
