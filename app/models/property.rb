class Property < ActiveRecord::Base
 
  has_attached_file :photo, styles: { 
  		:medium => "500x300>", 
  		:thumb => "150x150>", 
  		:large => "1050x504>" 
  	},
    :default_url => "/images/:style/missing.png",
  	:storage => :s3
  	
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
 
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
