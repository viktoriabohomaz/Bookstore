Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home_pages#index"

end
