Rails.application.routes.draw do
  resources :ratings, only: [:index, :show, :create, :update, :delete]
  resources :comments, only: [:index, :show, :delete, :create]
  resources :recipes
  resources :users, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
