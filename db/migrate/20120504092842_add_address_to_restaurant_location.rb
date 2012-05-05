class AddAddressToRestaurantLocation < ActiveRecord::Migration
  def change
    add_column :restaurant_locations, :address, :string
    add_column :restaurant_locations, :restaurant_admin_id, :integer
  end
end
