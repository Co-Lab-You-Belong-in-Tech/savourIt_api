class Api::V1::CategoriesController < ApplicationController
  def index
    #    lang = params[:lang] || 'EN'
    render json: { message: ['Category list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   nb_result: Category.all.length,
                   data: ActiveModelSerializers::SerializableResource.new(Category.all) },
           status: :ok
  end

  def fancy
    nb_fancy = if params[:nb_fancy].nil?
                 5
               else
                 Integer(params[:nb_fancy])
               end

    id_hungry = params[:id_hungry]
    min_wait = params[:min_wait]
    max_wait = params[:max_wait]

    categories = if params['id_hungry'].nil?
                   Category.all
                 else
                   Category.where('hunger_id= :id_hungry', id_hungry:)
                 end

    unless params['min_wait'].nil?
      categories = categories.joins('INNER JOIN category_meals ON category_meals.category_id = categories.id')
        .joins('INNER JOIN meals ON meals.id = category_meals.meal_id')
        .joins('INNER JOIN restaurants ON restaurants.id=meals.restaurant_id')
        .joins('INNER JOIN doordashes ON doordashes.restaurant_id = restaurants.id')
        .where('doordashes.time_delivery >= :min_wait ', min_wait:)
        .distinct
    end

    unless params['max_wait'].nil?
      categories = categories.joins('INNER JOIN category_meals ON category_meals.category_id = categories.id')
        .joins('INNER JOIN meals ON meals.id = category_meals.meal_id')
        .joins('INNER JOIN restaurants ON restaurants.id=meals.restaurant_id')
        .joins('INNER JOIN doordashes ON doordashes.restaurant_id = restaurants.id')
        .where('doordashes.time_delivery <= :max_wait', max_wait:)
        .distinct
    end

    categories = categories.sample(nb_fancy)

    render json: { message: ['Fancy list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   data: ActiveModel::SerializableResource.new(categories, each_serializer: FancySerializer) },
           status: :ok
  end
end
