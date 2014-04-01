Jksharer::Application.routes.draw do
  
  resources :blog_types

  resources :resource_types

  resources :blogs

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root to: "main_pages#home"
  
  match '/', to: 'main_pages#home', via: 'get'
  match '/about', to: 'main_pages#about', via: 'get'
  match '/contact', to: 'main_pages#contact', via: 'get'
  match '/settings', to: 'main_pages#settings', via: 'get'
  
  match '/signup', to: 'users#new',   via: 'get'
  match '/signin', to: 'sessions#new',   via: 'get'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
  
end
