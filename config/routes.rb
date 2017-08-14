Rails.application.routes.draw do

  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/about'


  get 'products/products_girls'
  get 'products/products_boys'
  get 'products/toys'
  get 'products/books'
  get 'products/boys_prod_1'
  get 'products/gallery'
  get 'products/blog'


  # get '/about', to: 'static_pages#about'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :home]
  resource :user, except: [:new, :create, :destroy]

  namespace :current_user do
    resources :payments, only: [:index, :show] do
      resources :payment_line_items, only: [:index, :show]
    end
    resource :shopping_cart, only: [:show, :update]
  end

end
