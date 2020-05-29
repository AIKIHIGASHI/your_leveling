Rails.application.routes.draw do


  get root to: 'users#top'
  get 'users/show'
  get 'users/updare'
  devise_for :users
end
