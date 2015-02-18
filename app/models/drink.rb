class Drink < ActiveRecord::Base
	belongs_to :user
	before_save :check_name

	protected
	def check_name
		if !self.name
			self.name = "coffee" # Defaults to coffee since that is the use case. Other options can be added later
		end
	end
end
