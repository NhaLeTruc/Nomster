class Place < ActiveRecord::Base
	self.per_page = 5
	belongs_to :user
end
