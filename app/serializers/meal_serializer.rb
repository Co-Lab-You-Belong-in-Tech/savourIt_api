class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :description, :image_url, :category, :hunger, :rating_value, :rating_count,
             :currency_code

  def currency_code
    object.restaurant.currency_code
  end

  def category
    object.categories.first.name
  end

  def hunger
    object.categories.first.hunger.value
  end

  def rating_value
    object.restaurant.uber.rating_value
  end

  def rating_count
    object.restaurant.uber.rating_count
  end
end
