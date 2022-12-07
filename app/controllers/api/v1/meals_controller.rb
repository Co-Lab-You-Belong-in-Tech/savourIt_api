class Api::V1::MealsController < ApplicationController
  def index
    min_budget = params['minBudget'] || 0
    max_budget = params['maxBudget'] || 10_000_000
    result = Meal
      .where('price >= :min_budget AND price <= :max_budget', min_budget:, max_budget:)
      .where(desactivate: false).order('RANDOM()')

    render json: { message: ['Meal list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   nb_result: result.length,
                   data: ActiveModelSerializers::SerializableResource.new(result) },
           status: :ok
  end
end
