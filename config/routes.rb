Rails.application.routes.draw do
  get 'carts/show'
  get 'carts/add'
  get 'carts/remove'
  get 'carts/clear'
  get 'carts/complete'
  root 'items#index'
  resources :items, only: [:index, :show]
  get 'cart', to: 'carts#show'
  post 'cart/add/:id', to: 'carts#add', as: 'add_to_cart'
  post 'cart/remove/:id', to: 'carts#remove', as: 'remove_from_cart'
  post 'cart/clear', to: 'carts#clear', as: 'clear_cart'
  get 'cart/complete', to: 'carts#complete', as: 'cart_complete'

end
