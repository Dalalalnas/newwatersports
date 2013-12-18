Watersports::Application.routes.draw do

  get "check/index"

  get "check/show"

  resources :orders

  resources :posts
  
    resources :rides do 
	resources :orders #saying that the ORDERS belong to rides
  end
  
   resources :rides do 
	resources :posts #saying that the posts belong to rides 
  end

  

   get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  match '/about' => 'pages#about'
    
  get "pages/home"
  
  get "pages/about"
  
  resources :users

  resources :rides

  resources :types
  
  resources :sessions
  
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  match '/search' => 'rides#search'
   
  match 'orders/:id' => 'orders#new'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
 root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
