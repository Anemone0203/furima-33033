Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  # # root to: 'articles#index'
  # resources :articles
  # resources :users
  resources :items
  
end
