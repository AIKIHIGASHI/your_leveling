Rails.application.routes.draw do
  devise_for :users
  root to: 'users#top'
  resources :users, only: [:show, :update]
  resources :tasks, only: [:new, :create, :show, :destroy]

end
