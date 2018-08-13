Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root "home_pages#index"

  resources :books
end
