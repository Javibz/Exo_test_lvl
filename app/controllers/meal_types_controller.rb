class MealTypesController < ApplicationController
 
  def index
		
	@meal_types = MealType.all

  end
end
