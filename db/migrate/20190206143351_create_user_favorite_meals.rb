class CreateUserFavoriteMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favorite_meals do |t|
    	t.references :user, foreign_key: true
      	t.references :meal, foreign_key: true
      t.timestamps
    end
  end
end
