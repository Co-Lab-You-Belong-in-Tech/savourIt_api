class Category < ApplicationRecord
  has_many :category_meals, dependent: :destroy
  has_many :meals, through: :category_meals
  belongs_to :hunger
end
