class AddEstadoToPresupuestos < ActiveRecord::Migration
  def change
    add_column :presupuestos, :estado, :string
  end
end
