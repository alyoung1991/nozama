Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:show, :create]
    resources :products, only: [:index, :show]
    resources :reviews, only: [:index, :show, :create, :update, :destroy]
    resources :carts, only: [:show, :create, :update, :destroy]
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resource :session, only: [:create, :destroy]
  end
end
