Jksharer::Application.routes.draw do
  resources :users

  root to: "main_pages#home"
  
  match '/', to: 'main_pages#home', via: 'get'
  match '/about', to: 'main_pages#about', via: 'get'
  match '/contact', to: 'main_pages#contact', via: 'get'

end
