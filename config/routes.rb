Rails.application.routes.draw do

  resources :posts
  resources :locations
  
  devise_for :users
  
  root 'posts#index'
  
end
