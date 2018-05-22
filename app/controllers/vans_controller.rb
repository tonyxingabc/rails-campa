class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.create(van_params)
    @van.owner = current_user
    if @van.save
      redirect_to van_path(@van)
    else
      render :new
    end
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    @van = Van.find(params[:id])
    @van.update(van_params)
    if @van.save
      redirect_to van_path(@van)
    else
      render :new
    end
  end

  def destroy
    @van = Van.find(params[:id])
    @van.destroy
    redirect_to vans_path
  end

  private

  def van_params
    params.require(:van).permit(:user, :description, :cost_per_night, :max_guest,:transmission_type, :toilet, :beds)
  end
end
