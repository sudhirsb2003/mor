class Event < ActiveRecord::Base
 has_many :galleries
 acts_as_gmappable :validation => true, :check_process => false
 
 def gmaps4rails_address
  "#{self.address}" 
 end


   def gmaps4rails_infowindow
      "#{self.name}"
    end
    
end
