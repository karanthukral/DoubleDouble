class Drink < ActiveRecord::Base
	belongs_to :user
	before_save :check_name

	protected
	def check_name
		if !self.name
			self.name = "coffee"
		end
	end
end
