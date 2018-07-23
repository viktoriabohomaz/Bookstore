Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  get 'reviews/index'
  get 'reviews/update'
  get 'carts/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home_pages#index"

end
