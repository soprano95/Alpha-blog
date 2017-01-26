Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  resources :users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get 'edit', to: 'users#edit'
end
