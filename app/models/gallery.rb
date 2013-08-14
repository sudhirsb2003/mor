class Gallery < ActiveRecord::Base
  #attr_accessible :photo
  belongs_to :event
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
