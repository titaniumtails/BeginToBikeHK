class BikeRoutesController < ApplicationController
  before_action :set_bike_route, only: [:show, :edit, :update, :destroy]

  # GET /bike_routes
  # GET /bike_routes.json
  def index
    @bike_routes = BikeRoute.all
  end

  # GET /bike_routes/1
  # GET /bike_routes/1.json
  def show
    if params[:admin] == "true"

    else 
      render 'routedetail'
    end 
  end

  # GET /bike_routes/new
  def new
    if params[:admin] == "true"
      @bike_route = BikeRoute.new

    else
      @bike_route = BikeRoute.new
      render 'createmyroute'
    end
  end

  # GET /bike_routes/1/edit
  def edit
  end

  # POST /bike_routes
  # POST /bike_routes.json
  def create
    @bike_route = BikeRoute.new(bike_route_params)

    respond_to do |format|
      if @bike_route.save
        format.html { redirect_to @bike_route, notice: 'Bike route was successfully created.' }
        format.json { render :show, status: :created, location: @bike_route }
      else
        format.html { render :new }
        format.json { render json: @bike_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bike_routes/1
  # PATCH/PUT /bike_routes/1.json
  def update
    respond_to do |format|
      if @bike_route.update(bike_route_params)
        format.html { redirect_to @bike_route, notice: 'Bike route was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike_route }
      else
        format.html { render :edit }
        format.json { render json: @bike_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bike_routes/1
  # DELETE /bike_routes/1.json
  def destroy
    @bike_route.destroy
    respond_to do |format|
      format.html { redirect_to bike_routes_url, notice: 'Bike route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike_route
      @bike_route = BikeRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bike_route_params
      params.require(:bike_route).permit(:name, :from, :to, :from_district, :to_district, :map_thumb, :date, :map_detail, :warning, :warning_thumb, :description, :mtb, :distance, :time, :difficulty, :comments, :best_tod, :user_generated, :ranking)
    end
end
