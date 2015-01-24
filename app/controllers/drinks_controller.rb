class DrinksController < ApplicationController
	before_action :authenticate_user!
	def create
		@drink = current_user.drinks.build(drinks_params)
		if @drink.save
      		flash[:success] = "Drink created!"
      		redirect_to root_url
    	else
    		# Handle failure
    	end
	end

	def destroy
	end
end
