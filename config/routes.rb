Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  get 'top/login'
  post 'top/login'
  get 'top/logout'

  resources :users
  resources :tweets do
    resource :likes, only: [:create, :destroy]
  end
end