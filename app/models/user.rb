class User < ActiveRecord::Base
has_secure_password
has_many :posts, :dependent => :destroy
has_many :orders, :dependent => :destroy

 validates :email, :fname, :dob, presence: true 
 validates :email, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}  # make sure its unique 
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


 def username
     username = self.name + " " + self.email
	 end
	 
	 def age
	 age = ((Date.current - self.dob)/ 365).to_i
	 end
	 
end