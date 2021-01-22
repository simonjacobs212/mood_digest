Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  root 'static#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get '/' to: 
end
