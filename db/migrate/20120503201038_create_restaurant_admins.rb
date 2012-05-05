class CreateRestaurantAdmins < ActiveRecord::Migration
  def change
    create_table :restaurant_admins do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
