require 'faker'

Meal.all.destroy_all
MealType.all.destroy_all


meal_types_array = ['Vegetarian', 'Carnivor', 'No-pasta', 'No-spicy', 'Low-Calories']

meal_types_array.each do |type|

	MealType.create(name: type)

end

20.times do |m|
	@meals = Meal.create(title:Faker::Food.dish, description:Faker::Food.description, meal_type_id: rand(MealType.first.id..MealType.last.id))
end

4.times do |f|
	UserFavoriteMeal.create(user_id:rand(User.first.id..User.last.id), meal_id: rand(Meal.first.id..Meal.last.id))
end
