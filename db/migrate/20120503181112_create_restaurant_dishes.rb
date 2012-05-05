class CreateRestaurantDishes < ActiveRecord::Migration
  def change
    create_table :restaurant_dishes do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
