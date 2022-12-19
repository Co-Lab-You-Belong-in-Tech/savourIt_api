class CategoryIngredientMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :category_ingredient
end
