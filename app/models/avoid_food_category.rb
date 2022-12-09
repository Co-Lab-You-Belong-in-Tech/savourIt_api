class AvoidFoodCategory < ApplicationRecord
  has_many :avoid_food, dependent: :destroy
end
