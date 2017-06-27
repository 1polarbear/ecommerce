Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]
  resource :user, except: [:new, :create, :destroy]

  namespace :user do
    resources :payments, only: [:index, :show] do
      resources :payment_line_items, only: [:index, :show]
    end
    resource :shopping_cart, only: [:show, :update]
  end

end
