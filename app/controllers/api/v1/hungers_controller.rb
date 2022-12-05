class Api::V1::HungersController < ApplicationController
  def index
    lang = params[:lang] || 'EN'
    render json: { data: ActiveModelSerializers::SerializableResource.new(Hunger.all),
                   message: ['Hunger list fetched successfully'],
                   status: 200,
                   type: 'Success',
                   lang: },
           status: :ok
  end
end
