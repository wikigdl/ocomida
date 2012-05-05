class CreateRestaurantLocations < ActiveRecord::Migration
  def change
    create_table :restaurant_locations do |t|
      t.float :lat
      t.float :lgn

      t.timestamps
    end
  end
end
