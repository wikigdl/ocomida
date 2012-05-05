class Restaurant::Dish < ActiveRecord::Base
  attr_accessible :image,:name,:description,:price,:restaurant_admin_id
  mount_uploader :image, ImageUploader
  belongs_to :restaurant_admin, :class_name => 'Restaurant::Admin'
end
