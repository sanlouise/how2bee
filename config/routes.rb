Rails.application.routes.draw do
  
  get 'users/new'

  resources :users
  resources :articles
  root 'pages#home'
  
end
