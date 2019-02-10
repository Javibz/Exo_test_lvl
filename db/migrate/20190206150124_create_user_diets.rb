class CreateUserDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_diets do |t|
    	t.references :user, foreign_key: true
      	t.references :meal_type, foreign_key: true
      t.timestamps
    end
  end
end
