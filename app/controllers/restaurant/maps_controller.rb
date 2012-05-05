class Restaurant::MapsController < ApplicationController
  # GET /restaurant/maps
  # GET /restaurant/maps.json
  before_filter :authenticate_admin!
  layout 'restaurant_cms'
  layout 'application'
  def index
    @json = Restaurant::Map.all.to_gmaps4rails
    @restaurant_maps = Restaurant::Map.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_maps }
    end
  end

  # GET /restaurant/maps/1
  # GET /restaurant/maps/1.json
  def show
    @restaurant_map = Restaurant::Map.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_map }
    end
  end

  # GET /restaurant/maps/new
  # GET /restaurant/maps/new.json
  def new
    @restaurant_map = Restaurant::Map.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_map }
    end
  end

  # GET /restaurant/maps/1/edit
  def edit
    @restaurant_map = Restaurant::Map.find(params[:id])
  end

  # POST /restaurant/maps
  # POST /restaurant/maps.json
  def create
    @restaurant_map = Restaurant::Map.new(params[:restaurant_map])

    respond_to do |format|
      if @restaurant_map.save
        format.html { redirect_to @restaurant_map, notice: 'Map was successfully created.' }
        format.json { render json: @restaurant_map, status: :created, location: @restaurant_map }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant/maps/1
  # PUT /restaurant/maps/1.json
  def update
    @restaurant_map = Restaurant::Map.find(params[:id])

    respond_to do |format|
      if @restaurant_map.update_attributes(params[:restaurant_map])
        format.html { redirect_to @restaurant_map, notice: 'Map was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant/maps/1
  # DELETE /restaurant/maps/1.json
  def destroy
    @restaurant_map = Restaurant::Map.find(params[:id])
    @restaurant_map.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_maps_url }
      format.json { head :ok }
    end
  end
end
