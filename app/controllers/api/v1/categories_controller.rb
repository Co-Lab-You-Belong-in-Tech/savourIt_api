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
    nb_fancy = params[:nb_fancy] || 5
    id_hungry = params[:id_hungry]

    c = if params['id_hungry'].nil?
          Category.all.sample(nb_fancy)
        else
          Category.where('hunger_id= :id_hungry', id_hungry:).sample(nb_fancy)
        end

    render json: { message: ['Fancy list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang],
                   data: ActiveModel::SerializableResource.new(c, each_serializer: FancySerializer) },
           status: :ok
  end
end
