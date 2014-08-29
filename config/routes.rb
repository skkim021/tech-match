Rails.application.routes.draw do
  # # root 'users#index'

# /////////////// FACEBOOK ////////////////////////////////////////////  
match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
 # /////////////////////////////////////////////////////////////////////


  root "users#first", as: :first
  
  get 'users' => 'users#index'
  get 'signup' => "users#new", as: :sign_up
  # get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show', as: :user 
  get 'users/:id/edit' => 'users#edit', as: :edit_user 
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy', as: :delete_user
  
  post 'signup' => 'users#create'
  
  get 'signin' => 'sessions#new', as: :sign_in
  post 'signin' => 'sessions#create'
  delete 'signout' => 'sessions#destroy', as: :sign_out

  resources :sessions, only: [:new, :create, :destroy]
  resources :jobs, only: [:index, :new, :create, :show]
  resources :profiles, only: [:index]


# /////////////// FACEBOOK ////////////////////////////////////////////  
root 'items#index'
get 'items' => 'items#index'
get 'items/new' => 'items#new'
post 'items' => 'items#create'
get 'items/:id' => 'items#show', as: :item
get 'items/:id/edit' => 'items#edit', as: :edit_item
patch 'items/:id' => 'items#update'
delete 'items/:id' => 'items#destroy', as: :delete_item
 # /////////////////////////////////////////////////////////////////////



 














 # root 'users#index'
  
 #  get 'signup' => "users#new", as: :sign_up
 #  post 'signup' => 'users#create'
  
 #  get 'signin' => 'sessions#new', as: :sign_in
 #  post 'signin' => 'sessions#create'
 #  delete 'signout' => 'sessions#destroy', as: :sign_out
 #  resources :sessions, only: [:new, :create, :destroy]
 #  resources :users, only: [:show, :edit, :update, :destroy]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
