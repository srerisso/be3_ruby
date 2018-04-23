class AddEtiquetasToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :etiquetas, :string
  end
end
