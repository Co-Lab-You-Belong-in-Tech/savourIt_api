class Api::V1::MealsController < ApplicationController
  def index
    result = Meal.all
    render json: { message: ['Meal list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   nb_result: result.length,
                   data: ActiveModelSerializers::SerializableResource.new(result) },
           status: :ok
  end
end
