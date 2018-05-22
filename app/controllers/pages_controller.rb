class PagesController < ApplicationController
  def home
    @vans = Van.all.sample(10)
  end

  # def profile
  #   @bookings = currrent_user.bookings
  # end
end
