Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "home_pages#index"

  resources :books, only: [:index, :show]
  resources :order_items, only: [:index, :create, :update, :destroy]
  resources :orders, only: [:index, :create, :destroy]
end
