class Restaurant::MenuController < ApplicationController

  def index
    @json = Restaurant::Location.all.to_gmaps4rails
    @restaurant_restaurants = Restaurant::Restaurant.all
    @restaurant_dishes = Restaurant::Dish.all
  end

end
