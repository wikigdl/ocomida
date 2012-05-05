class CreateRestaurantRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurant_restaurants do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
