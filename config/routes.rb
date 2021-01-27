Rails.application.routes.draw do
  # get 'user_moods/index'
  # get 'user_moods/show'
  get '/', to: 'static#welcome', as: 'root'


  ##### users ######
  get '/users/login', to: 'users#login', as: 'login_user'
  post '/please_login', to: 'users#please_login'
  get  '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  # resources :users, only: [:new, :create]
  
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete "/logout", to: "users#logout", as: "logout"

  ###### user_mood #####
  get '/user_moods', to: 'user_moods#index', as: 'user_moods'
  get '/user_moods/new', to: 'user_moods#new', as: 'new_user_mood'
  post '/user_moods', to: 'user_moods#create'
  get '/user_moods/:id', to: 'user_moods#show', as: 'user_mood'
  patch '/user_moods/:id', to: 'user_moods#improve_user_mood', as: 'improve_user_mood'
  delete '/user_moods/:id', to: 'user_moods#destroy', as: 'delete_user_mood'

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get '/' to: 
end
