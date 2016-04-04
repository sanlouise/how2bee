Rails.application.routes.draw do
  
  get 'users/new'

  resources :articles
  root 'pages#home'
  
end
