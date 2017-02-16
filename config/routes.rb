Rails.application.routes.draw do

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
