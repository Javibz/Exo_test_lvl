Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  devise_for :users
  root 'home#index'
  resources :meals

  get 'meals/favmeal/:id', to: 'meals#favmeal', as: 'user_favmeal'

  
end
