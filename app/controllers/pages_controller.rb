class PagesController < ApplicationController
  def home
    @vans = Van.all.sample(10)
  end

  def profile
    @vans = Van.where(owner: current_user)
    # @vans.user = current_user
  end
end
