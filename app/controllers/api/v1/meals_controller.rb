class Api::V1::MealsController < ApplicationController
  def index
    min_budget = params['minBudget'] || 0
    max_budget = params['maxBudget'] || 10_000_000
    id_hunger = params['id_hunger']

    result = Meal
      .where('price >= :min_budget AND price <= :max_budget', min_budget:, max_budget:)
      .where(desactivate: false)

    result = result.joins(:categories).where('hunger_id= :id_hunger', id_hunger:) if id_hunger

    result = result.order('RANDOM()')

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