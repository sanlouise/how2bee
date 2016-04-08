Rails.application.routes.draw do

  root 'pages#home'
  
  get '/contact', to: 'pages#contact'
  get '/legal', to: 'pages#legal'
  get '/about', to: 'pages#about'
  get '/terms_of_use', to: 'pages#terms_of_use'
  get '/privacy_policy', to: 'pages#privacy_policy'

  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'
  
  resources :articles
  resources :contacts
  
end
