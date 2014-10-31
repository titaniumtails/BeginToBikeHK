class HomeController < ApplicationController

  def index
    @bikeRoutes = BikeRoute.all 
  end

  def tips
  end
end
