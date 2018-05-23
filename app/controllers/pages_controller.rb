class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home
  def home
    @vans = Van.all.sample(10)
  end

  def profile
    @my_vans = current_user.my_vans
    @my_bookings = current_user.bookings
  end
end
