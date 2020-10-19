Rails.application.routes.draw do
  
  devise_for :users
  root to: "stores#index"
  resources :stores, only: [:index, :new, :create, :edit, :update, :show]

  resources :messages, only: [:index, :create] do
    resources :comments, only: [:index, :create]
  end
end
