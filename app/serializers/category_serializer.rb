class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :hunger, :nb_meals
  def hunger
    object.hunger.value
  end

  def nb_meals
    object.meals.length
  end
end
