class Meal < ApplicationRecord
	belongs_to :meal_type
	has_many :users
	
	has_many :users, through: :user_favorite_meals

end

