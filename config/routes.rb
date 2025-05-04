Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show]
  root 'items#index'  # トップページを商品一覧に
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
