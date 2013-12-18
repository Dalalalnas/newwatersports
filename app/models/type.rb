class Type < ActiveRecord::Base
    has_many :rides :dependent => :destroy
    validates :name, presence: true	# validates that name cannot be null 
end
