Rails.application.routes.draw do
  resources :tareas

  resources :clientes, :tareas
    
  # GET     /presupuestos           -> INDEX -- show all presupuestos
  # POST    /presupuestos           -> CREATE -- create a new presupuesto
  # GET     /presupuestos/new       -> New page
  # GET     /presupuestos/:id       -> SHOW -- display a single presupuesto
  # GET     /presupuestos/:id/edit  -> Edit page -- a separate page to edit a presupuesto
  # PUT     /presupuestos/:id       -> UPDATE -- update a single presupuesto
  # GET     /presupuestos/:id       -> DELTE -- delete a presupuesto from the database
  resources :presupuestos do
      resources :todos, :except => [:index, :update, :destroy, :show, :edit]
      resources :todos, :only => [:create]
  end

  resources :todos, :only => [:update, :destroy]
    
  #-- GET /presupuestos/:presupuesto_id/todos     -> SHOW
  #-- GET /presupuestos/:presupuesto_id/todos/new     -> NEW page
  # POST /presupuestos/:presupuesto_id/todos     -> CREATE
  #-- GET /presupuestos/:presupuesto_id/todos/:id/edit     -> edit page
  # PUT /todos/:id     -> UPDATE
  # DELETE /todos/:id     -> DESTROY
    
  get 'presupuestos/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'presupuestos#index'

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
