class AddEstadoToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :estado, :string
  end
end
