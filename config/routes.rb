Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'static_pages/login'
  get 'static_pages/home'
  get 'static_pages/historico'

  devise_for :users
  resources :clientes, :tareas

  get 'search' => 'presupuestos#search'

  # GET     /presupuestos           -> INDEX -- show all presupuestos
  # POST    /presupuestos           -> CREATE -- create a new presupuesto
  # GET     /presupuestos/new       -> New page
  # GET     /presupuestos/:id       -> SHOW -- display a single presupuesto
  # GET     /presupuestos/:id/edit  -> Edit page -- a separate page to edit a presupuesto
  # PUT     /presupuestos/:id       -> UPDATE -- update a single presupuesto
  # GET     /presupuestos/:id       -> DELETE -- delete a presupuesto from the database
  resources :presupuestos do
      resources :todos, :except => [:index, :show]
      resources :todos, :only => [:create]
  end

  resources :todos, :only => [:update, :destroy]

  #-- GET /presupuestos/:presupuesto_id/todos     -> SHOW
  #-- GET /presupuestos/:presupuesto_id/todos/new     -> NEW page
  # POST /presupuestos/:presupuesto_id/todos     -> CREATE
  #-- GET /presupuestos/:presupuesto_id/todos/:id/edit     -> edit page
  # PUT /todos/:id     -> UPDATE
  # DELETE /todos/:id     -> DESTROY

  #get 'presupuestos/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'presupuestos#index'
  root 'static_pages#home'

end
