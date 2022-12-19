class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :category_meals, dependent: :destroy
  has_many :categories, through: :category_meals
  has_many :ingredient_meals, dependent: :destroy
  has_many :ingredients, through: :ingredient_meals
  has_many :category_ingredient_meals, dependent: :destroy
  has_many :category_ingredients, through: :category_ingredient_meals
end
