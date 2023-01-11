class FancySerializer < ActiveModel::Serializer
  attributes :id, :name, :hunger
  attribute :meal do
    o = object.meals.sample
    category_price = if o.restaurant.doordash.nil?
                       '$'
                     else
                       o.restaurant.doordash.category_price
                     end
    info = if o.restaurant.doordash.nil?
             ''
           else
             o.restaurant.doordash.info
           end

    if o.nil?
      {}
    else
      {
        id: o.id,
        title: o.title,
        price: o.price,
        description: o.description,
        image_url: o.image_url,
        rating_value: o.restaurant.uber.rating_value,
        rating_count: o.restaurant.uber.rating_count,
        currency_code: o.restaurant.currency_code,
        category_price:,
        info:
      }
    end
  end
  def hunger
    object.hunger.value
  end

  def nb_meals
    object.meals.length
  end
end
