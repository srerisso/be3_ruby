class AddImporteToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :importe, :float
  end
end
