Rails.application.routes.draw do
  
  devise_for :users
  root to: "stores#index"
  resources :stores, only: [:index, :new, :create, :edit, :update, :show] do
    collection do
      get 'search'
    end
  end

  resources :messages, only: [:index, :create] do
    resources :comments, only: [:index, :create]
    resources :delivers, only: [:index, :create]
  end
end
