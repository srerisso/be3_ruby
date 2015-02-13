class AddEtiquetasToPresupuestos < ActiveRecord::Migration
  def change
    add_column :presupuestos, :etiquetas, :string
  end
end
