class Restaurant::Restaurant < ActiveRecord::Base
 belongs_to :restaurant_admin, :class_name => 'Restaurant::Admin'
end
