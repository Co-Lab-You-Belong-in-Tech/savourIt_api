class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :description, :image_url
  belongs_to :restaurant
  class RestaurantSerializer < ActiveModel::Serializer
    attributes :currency_code
  end
end
