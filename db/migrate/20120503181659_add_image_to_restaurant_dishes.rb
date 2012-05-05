class AddImageToRestaurantDishes < ActiveRecord::Migration
  def change
    add_column :restaurant_dishes, :image, :string
  end
end
