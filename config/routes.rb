Rails.application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'pages/profile'
  root 'sessions#new'
  get 'home' =>'pages#home', as: :home
  get 'about' =>'pages#about', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root 'posts#index'
#get 'about' => 'pages#about'
#get 'home' => 'pages#home'
end
