class NotasController < ApplicationController

  def create
  	@presupuesto = Presupuesto.find(params[:nota_id])
  	@nota = @presupuesto.notas.create(presupuesto_params)
  	redirect_to_presupuesto_path(@presupuesto)
  end

  def new
  	@nota = Nota.new
  end

  def index
  	#TODO si hay notas mostrarlas
  	#TODO si no hay, mostrar mensaje de que no hay notas
  end

end
