Rails.application.routes.draw do
  
  root to: "stores#index"
  resources :stores, only: [:index, :new, :create, :edit, :update, :show]
end
