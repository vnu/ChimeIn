Rails.application.routes.draw do
  root to: 'stories#index'
  devise_for :users
  resources :users
  resources :stories
end
