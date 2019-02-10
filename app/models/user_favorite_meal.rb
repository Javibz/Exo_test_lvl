class UserFavoriteMeal < ApplicationRecord
	
	belongs_to :user
  	belongs_to :meals

end
