Rails.application.routes.draw do
  get 'orders/show'

  get 'orders/new'

  get 'orders/edit'

  get 'orders/index'

  get 'reviews/show'

  get 'reviews/edit'

  get 'reviews/new'

  get 'reviews/orders'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
