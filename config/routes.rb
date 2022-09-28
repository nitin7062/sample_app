Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get'/login',to: 'sessions#new'
  post'/login', to: 'sessions#create'
  get '/signup', to: 'users#new' 
  root 'static_pages#home'
  # get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  delete'/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,only: [:new, :create, :edit, :update]
  resources :microposts
  resources :relationships,only: [:create, :destroy]
end