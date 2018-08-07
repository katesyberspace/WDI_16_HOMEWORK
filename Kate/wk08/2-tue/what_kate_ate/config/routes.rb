Rails.application.routes.draw do
  # resources :dishes

  get '/dishes', to: 'dishes#index'
  post '/dishes', to: 'dishes#create'

  get '/dishes/:id', to: 'dishes#show'

  put '/dishes/:id', to: 'dishes#update'

  delete '/dishes/:id', to: 'dishes#destroy'

end
