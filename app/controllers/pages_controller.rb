class PagesController < ApplicationController
  def home
    @vans = Van.all.sample(10)
  end
end
