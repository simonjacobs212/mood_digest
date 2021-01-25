Rails.application.routes.draw do
  # get 'user_moods/index'
  # get 'user_moods/show'
  get '/', to: 'static#welcome', as: 'root'


  ##### users ######
  get '/users/login', to: 'users#login', as: 'login_user'
  post '/please_login', to: 'users#please_login'
  
  get '/users', to: 'users#index', as: 'users' 
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete "/logout", to: "users#logout", as: "logout"

  ###### user_mood #####
  get '/user_moods/new', to: 'user_moods#new', as: 'new_user_mood'
  post '/user_moods', to: 'user_moods#create'
  get '/user_moods/:id', to: 'user_moods#show', as: 'user_mood'

  resources :users, only: [:new, :create]
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get '/' to: 
end
