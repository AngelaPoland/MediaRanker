Rails.application.routes.draw do

  root 'welcomes#index'

  get '/login', to: 'sessions#new', as: 'login_form'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/login', to: 'sessions#destroy', as: 'logout'



  resources :users

  resources :works do
    resources :votes, only: [:create]
  end



end
