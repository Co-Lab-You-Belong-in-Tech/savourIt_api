Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'hungers(/:lang)', to: "hungers#index", defaults: { lang: 'EN' }
      get 'country/:country/city/:city(/:lang)/meals', to: "meals#index", defaults: { lang: 'EN' }
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


