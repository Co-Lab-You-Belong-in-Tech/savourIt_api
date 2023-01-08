class Api::V1::AllergensController < ApplicationController
  def index
    render json: { data: ActiveModelSerializers::SerializableResource.new(Allergen.all),
                   message: ['Allergen list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: params[:lang] },
           status: :ok
  end
end
