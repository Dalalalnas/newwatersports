class Ride < ActiveRecord::Base
     belongs_to:type             #one movie one genre
has_many :posts, :dependent => :destroy
 has_many :orders

	 validate :must_have_Valid_Video
	 

	  def self.search(search)
	 search_condition = search + "%"
	 find(:all, :conditions=>['Ridename LIKE?', search_condition])
	 end 
	 



	  def must_have_Valid_Video
	  unless video.include?("<iframe")
	   errors.add(:video, "Must include an iframe tag")
	 end
	  
    end
	  

end

