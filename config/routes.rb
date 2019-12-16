Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Root
  root to: "public/homepage#index"
  scope module: :public do
    resources :about
    resources :contact
  end

  # For Admins
  devise_for :admins
  namespace :admins do
    root to: "dashboard#index"
    resources :dashboard, only: %w[index]
  end

  # For Users
  devise_for :users
  namespace :users do
    root to: "dashboard#index"
    resources :dashboard, only: %w[index]
  end
end
