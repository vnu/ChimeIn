Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users
  resources :stories
  resources :organizations do
    get :connect, on: :collection
    post :connect_now, on: :collection
  end

end
