Rails.application.routes.draw do
  resources :practitioners
  resources :kit_orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'


end
