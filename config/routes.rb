Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root "home_pages#index"

end
