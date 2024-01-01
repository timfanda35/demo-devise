Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root "posts#index"

  get "up" => "rails/health#show", as: :rails_health_check
end