Rails.application.routes.draw do

  get "/", to: "pages#index"
  post "/", to: "pages#create"
  patch "/:id", to: "pages#update"
  delete "/:id", to: "pages#destroy"

  namespace :api do
    namespace :v2 do
      get "/foods", to: 'foods#index'
      post "/foods", to: 'foods#create'
      get "/foods/:id", to: 'foods#show'
      patch "/foods/:id", to:'foods#update'
      delete "/foods/:id", to:'foods#destroy'
    end
  end
end
