class Allergen < ApplicationRecord
  has_many :ingredients, dependent: :nullify
end
