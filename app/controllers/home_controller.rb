class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @restaurant_restaurants = Restaurant::Restaurant.all
    @restaurant_dishes = Restaurant::Dish.all
  end

end
