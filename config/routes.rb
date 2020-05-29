Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :users, only: [:top, :show, :update]
  resources :tasks, only: [:new, :create, :show, :destroy]

end
