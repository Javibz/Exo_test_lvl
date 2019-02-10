class MealsController < ApplicationController
 	
 	def index
		@meals = Meal.all
	end

	def show
		@meal = Meal.find(params[:id])
	end

	def favmeal

		@favmeal = Meal.find(params[:id])
		@favmeal.user_favorite_meals << current_user
		redirect_to meals_path

	end

	def unfavmeal
	    @unfavmeal = Meal.find(params[:id])
	    @unfavmeal.user_favorite_meals.delete(current_user)
	    redirect_to meals_path
  end


end