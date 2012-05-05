class CreateRestaurantMaps < ActiveRecord::Migration
  def change
    create_table :restaurant_maps do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
