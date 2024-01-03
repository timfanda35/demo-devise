Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :posts
  root "posts#index"

  get "up" => "rails/health#show", as: :rails_health_check
end