Equip::Application.routes.draw do

  resources :tags

  resources :settings

  resources :events


  get '/logout', to: "bookings#logout"
  get '/invaliduser', to: "pages#invaliduser"
  get '/users/:column.json', to: "users#column", defaults: {format: :json}, constraints: lambda{|request|User.column_names.include?(request.params[:column])}
  get '/equipment/bytag/:tag_id', to: "equipment#tags", as: 'bytag'
  get '/equipment/:column.json', to: "equipment#column", defaults: {format: :json}, constraints: lambda{|request|Equipment.column_names.include?(request.params[:column])}

  #get '/bookings/:column.json', to: "bookings#column", defaults: {format: :json}, constraints: lambda{|request|Bookings.column_names.include?(request.params[:column])}
  get '/bookings/daterange', to: "bookings#daterange", defaults: {format: :json}

  #get '/equipment', to: "equipment#index"
  #patch '/equipment/:id', to: "equipment#update"

  resources :categories
  resources :equipment
  resources :users
  resources :bookings

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
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
