Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/:lang/categories', to: "categories#index"
      get '/:lang/hungers', to: "hungers#index"
      get '/:lang/meal/:id', to: "meals#show"
      get '/:lang/country/:country/city/:city/meals', to: "meals#index"
      get '/:lang/country/:country/city/:city/fancy', to: "categories#fancy"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


