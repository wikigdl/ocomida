class Restaurant::LocationsController < ApplicationController
  # GET /restaurant/locations
  # GET /restaurant/locations.json
  before_filter :authenticate_admin!
  layout 'restaurant_cms'
  def index
    @json =Restaurant::Location.all.to_gmaps4rails
    @restaurant_locations = Restaurant::Location.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_locations }
    end
  end

  # GET /restaurant/locations/1
  # GET /restaurant/locations/1.json
  def show
    @restaurant_location = Restaurant::Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_location }
    end
  end

  # GET /restaurant/locations/new
  # GET /restaurant/locations/new.json
  def new
    @restaurant_location = Restaurant::Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_location }
    end
  end

  # GET /restaurant/locations/1/edit
  def edit
    @restaurant_location = Restaurant::Location.find(params[:id])
  end

  # POST /restaurant/locations
  # POST /restaurant/locations.json
  def create
    @restaurant_location = Restaurant::Location.new(params[:restaurant_location])

    respond_to do |format|
      if @restaurant_location.save
        format.html { redirect_to @restaurant_location, notice: 'Location was successfully created.' }
        format.json { render json: @restaurant_location, status: :created, location: @restaurant_location }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant/locations/1
  # PUT /restaurant/locations/1.json
  def update
    @restaurant_location = Restaurant::Location.find(params[:id])

    respond_to do |format|
      if @restaurant_location.update_attributes(params[:restaurant_location])
        format.html { redirect_to @restaurant_location, notice: 'Location was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant/locations/1
  # DELETE /restaurant/locations/1.json
  def destroy
    @restaurant_location = Restaurant::Location.find(params[:id])
    @restaurant_location.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_locations_url }
      format.json { head :ok }
    end
  end
end
