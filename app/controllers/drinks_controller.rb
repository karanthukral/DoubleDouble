class DrinksController < ApplicationController
	before_action :authenticate_user!
	def new
		unless user_signed_in?
			redirect_to root_url
		else
			@drink = Drink.new();
		end
	end

	def create
		@drink = current_user.drinks.build(drink_params)
		@drink.name = "coffee"
		if @drink.save
			flash[:success] = "Drink Saved"
		else
			flash[:error] = "Could not save drink"
		end
		redirect_to new_drink_path
	end

	def destroy
	end

	private
	def drink_params
    	params.require(:drink).permit(:name, :size, :location, :user_id)
  	end

end
