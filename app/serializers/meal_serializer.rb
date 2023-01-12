class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :description, :image_url, :category, :hunger, :rating_value, :rating_count,
             :currency_code, :restaurant, :uber_url, :doordash_link, :delivery_time

  def currency_code
    object.restaurant.currency_code
  end

  def category
    object.categories.first&.name
  end

  def hunger
    object.categories.first&.hunger&.value
  end

  def rating_value
    object.restaurant.uber.rating_value
  end

  def rating_count
    object.restaurant.uber.rating_count
  end

  def restaurant
    object.restaurant.name
  end

  def delivery_time
    if object.restaurant.doordash.nil?
      ''
    else
      object.restaurant.doordash.time_delivery
    end
  end

  def doordash_link
    if object.dash_link
      object.restaurant.doordash.url
    else
      ''
    end
  end
end
