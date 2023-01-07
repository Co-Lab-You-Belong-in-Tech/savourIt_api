class Api::V1::MealsController < ApplicationController
  def index
    min_budget = params['minBudget'] || 0
    max_budget = params['maxBudget'] || 10_000_000
    id_hunger = params['id_hunger']

    if params['allergens'].nil?
      result = Meal.all
    else
      allergens = params['allergens'].split(':')

      sub = Meal.joins(:ingredients).where(ingredients: { allergen_id: allergens }).pluck(:id)

      result = Meal.where.not(id: sub)

    end

    # p '---------------------'
    # p result.size

    if params['categories'].nil?
      # result = Meal.all
    else
      categories = params['categories'].split(':')

      sub = result.left_outer_joins(:category_ingredient_meals)
        .where(category_ingredient_meals: { category_ingredient_id: categories }).pluck(:id)

      result = result.where.not(id: sub)

    end

    # p '---------------------'
    # p result.size
    #   r = Meal.select(:id)

    result = result
      .where('price >= :min_budget AND price <= :max_budget', min_budget:, max_budget:)
      .where(desactivate: false)

    result = result.joins(:categories).where('hunger_id= :id_hunger', id_hunger:) if id_hunger

    result = result.order('RANDOM()')

    # p '---------------------****'
    # p result.size

    render json: { message: ['Meal list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   nb_result: result.length,
                   data: ActiveModelSerializers::SerializableResource.new(result) },
           status: :ok
  end

  def show
    id_meal = params['id']
    result = Meal.find(id_meal)

    render json: { message: ['Meal fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   data: ActiveModelSerializers::SerializableResource.new(result) },
           status: :ok
  end
end
