Rails.application.routes.draw do
  root to: "main#new"


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/users/update' => 'users#update'

end