class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :description, :image_url, :category, :hunger
  belongs_to :restaurant

  class RestaurantSerializer < ActiveModel::Serializer
    attributes :currency_code
  end

  def category
    object.categories.first.name
  end

  def hunger
    object.categories.first.hunger.value
  end
end
