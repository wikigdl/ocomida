class AddRestaurantAdminIdToRestaurantMap < ActiveRecord::Migration
  def change
    add_column :restaurant_maps, :restaurant_admin_id, :string
  end
end
