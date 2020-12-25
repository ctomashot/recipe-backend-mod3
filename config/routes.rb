Rails.application.routes.draw do
  resources :ratings, only: [:show, :create, :update, :delete]
  resources :comments, only: [:show, :delete, :create]
  resources :recipes
  resources :users, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
