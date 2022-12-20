class Api::V1::AvoidcategoriesController < ApplicationController
  def index
    #    lang = params[:lang] || 'EN'
    render json: { message: ['Avoid Categories list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   nb_result: CategoryIngredient.all.length,
                   data: ActiveModelSerializers::SerializableResource.new(CategoryIngredient.all) },
           status: :ok
  end
end
