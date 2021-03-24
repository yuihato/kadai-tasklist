Rails.application.routes.draw do
  get 'users/create'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'tasks#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'tasks#new'
  resources :users, only: [:create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
