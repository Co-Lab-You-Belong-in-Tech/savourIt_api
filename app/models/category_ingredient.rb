class CategoryIngredient < ApplicationRecord
  has_many :ingredients, dependent: :nullify
end
