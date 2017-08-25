Rails.application.routes.draw do

  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/about'


  get 'products/girls'
  get 'products/boys'
  get 'products/toys'
  get 'products/books'
  get 'products/books_6to10'
  get 'products/books_graphic_novels'
  get 'products/books_novels'
  get 'products/books_young_adults'
  get 'products/boys_infants'
  get 'products/boys_2to6'
  get 'products/boys_7to13'
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
