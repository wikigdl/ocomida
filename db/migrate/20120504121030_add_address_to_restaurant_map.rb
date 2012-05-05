class AddAddressToRestaurantMap < ActiveRecord::Migration
  def change
    add_column :restaurant_maps, :address, :string
  end
end
