class Restaurant::Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:last_name,:first_name
 has_one :restaurant_restaurant, :class_name => 'Restaurant::Restaurant'
 has_many :restaurant_dishes, :class_name => 'Restaurant::Dish'
end
