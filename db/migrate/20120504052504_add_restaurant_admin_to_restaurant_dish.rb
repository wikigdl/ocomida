class AddRestaurantAdminToRestaurantDish < ActiveRecord::Migration
  def change
    add_column :restaurant_dishes, :restaurant_admin_id, :integer
  end
end
