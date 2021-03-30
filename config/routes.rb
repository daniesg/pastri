Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"

  get :sign_in, to: "sessions#new", as: :new_session
  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:new, :create]

  resources :desserts
end
