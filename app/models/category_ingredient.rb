class CategoryIngredient < ApplicationRecord
  has_many :ingredients, dependent: :nullify
  has_many :category_ingredient_meals, dependent: :destroy
  has_many :meals, through: :category_ingredient_meals
end
