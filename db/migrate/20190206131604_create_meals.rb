class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.belongs_to :meal_type, index: true
      
      t.timestamps
    end
  end
end
