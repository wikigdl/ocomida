class Restaurant::CmsController < ApplicationController
  #layout 'restaurant_cms'
  before_filter :authenticate_admin!
  layout 'restaurant_cms'
  def index
  end

  def restaurant
  end

  def menu
  end

  def account
  end

end
