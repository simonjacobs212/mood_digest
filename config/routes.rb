Rails.application.routes.draw do
  get '/', to: 'static#welcome', as: 'root'

  ##### users ######
  get '/users', to: 'users#index', as: 'users' 
  get '/users/show'
  get '/users/new'

  get '/users/login', to: 'users#login', as: 'login_user'
  post '/please_login', to: 'users#please_login'

  resources :users, only: [:new, :create]
  get '/users/:id', to: 'users#show', as: 'user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get '/' to: 
end
