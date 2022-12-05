class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :category_meals, dependent: :destroy
  has_many :categories, through: :category_meals
end
