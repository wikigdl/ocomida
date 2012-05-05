class AddGmaps4railsToLocation < ActiveRecord::Migration
  def change
    add_column :restaurant_locations, :latitude, :float
    add_column :restaurant_locations, :longitude, :float
    add_column :restaurant_locations, :gmaps, :boolean
  end
end
