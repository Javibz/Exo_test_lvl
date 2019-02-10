class MealType < ApplicationRecord

	has_many :meals

  	has_many :diets_users, through: :user_diet, :source => :user
	
end
