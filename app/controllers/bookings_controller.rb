class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def create
    @van = Van.find(params[:van_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.van = @van
    if @booking.save
      redirect_to pages_profile_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to pages_profile_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to pages_profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :van, :status, :start_date, :end_date, :cost)
  end
end
