class Order < ActiveRecord::Base
has_many :rides, :dependent => :destroy

end