class PresupuestosController < ApplicationController
  before_action :set_presupuesto, only: [:show, :edit, :update, :destroy]
  before_action :set_clientlist
  before_action :authenticate_user!
    
  # GET /presupuestos
  # GET /presupuestos.json
  def index
    if (params[:search]) 
      @search = Presupuesto.search do
        fulltext params[:search]
        paginate :page => params[:page]
      end
      @presupuestos = @search.results
    else
      @presupuestos = Presupuesto.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')      
    end
  end

  # GET /presupuestos/1
  # GET /presupuestos/1.json
  def show
      @todos = Todo.where(presupuesto_id: @presupuesto.id).order("created_at DESC")
  end

  # GET /presupuestos/new
  def new
    @presupuesto = Presupuesto.new
    @last = Presupuesto.last
  end

  # GET /presupuestos/1/edit
  def edit
  end

  # POST /presupuestos
  # POST /presupuestos.json
  def create
    @presupuesto = Presupuesto.new(presupuesto_params)
#    @presupuesto.cliente_id = cliente.id

    respond_to do |format|
      if @presupuesto.save
        format.html { redirect_to @presupuesto }
        format.json { render :show, status: :created, location: @presupuesto }
      else
        format.html { render :new }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestos/1
  # PATCH/PUT /presupuestos/1.json
  def update
    respond_to do |format|
      if @presupuesto.update(presupuesto_params)
        format.html { redirect_to @presupuesto, notice: 'Presupuesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @presupuesto }
      else
        format.html { render :edit }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presupuestos/1
  # DELETE /presupuestos/1.json
  def destroy
    @presupuesto.destroy
    respond_to do |format|
      format.html { redirect_to presupuestos_url, notice: 'Presupuesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @search = Presupuesto.search do
      fulltext params[:search]
      paginate :page => params[:page]
    end
    @search.results
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuesto
      @presupuesto = Presupuesto.find(params[:id])
    end
    
    def set_clientlist
        @clientes = Cliente.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presupuesto_params
      params.require(:presupuesto).permit(:codigoalg, :series, :acabado, :referencia, :estado, :etiquetas, :cliente_id, todos_attributes: [:id, :texto])
    end
end
