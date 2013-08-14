class Event < ActiveRecord::Base
 has_many :galleries
 acts_as_gmappable :validation => true, :check_process => false, :process_geocoding => false
 
 def gmaps4rails_address
  "#{self.address}" 
 end

end
