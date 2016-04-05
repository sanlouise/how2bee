Rails.application.routes.draw do

  root 'pages#home'

  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'
  
  resources :articles
  
end
