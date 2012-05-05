class Restaurant::Location < ActiveRecord::Base
  acts_as_gmappable
  def gmaps4rails_address
    address
  end
 # def gmaps4rails_infowindow
   #"#{address}"
  #end
end
