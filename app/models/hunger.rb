class Hunger < ApplicationRecord
  has_many :categories, dependent: :nullify
end
