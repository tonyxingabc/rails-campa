class VansController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @vans = policy_scope(Van)

    @vans = Van.where.not(latitude: nil, longitude: nil)

    @markers = @vans.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @van = Van.find(params[:id])
    authorize @van
  end

  def new
    @van = Van.new
    authorize @van
  end

  def create
    @van = Van.create(van_params)
    authorize @van
    @van.owner = current_user
    if @van.save
      redirect_to pages_profile_path
    else
      render :new
    end
  end

  def edit
    @van = Van.find(params[:id])
    authorize @van
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
    authorize @van
    @van.destroy
    redirect_to pages_profile_path
  end

  private

  def van_params
    params.require(:van).permit(:user, :description, :cost_per_night, :max_guest,:transmission_type, :toilet, :beds)
  end
end
