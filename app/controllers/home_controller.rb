class HomeController < ApplicationController

  def index
    @bikeRoutes = BikeRoute.all 
    @routeRank = BikeRoute.order('ranking')
  end


  def tips
  end
end
