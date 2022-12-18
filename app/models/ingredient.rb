class Ingredient < ApplicationRecord
  belongs_to :category_ingredient, optional: true
  has_many :ingredient_meals, dependent: :destroy
  has_many :meals, through: :ingredient_meals
end
