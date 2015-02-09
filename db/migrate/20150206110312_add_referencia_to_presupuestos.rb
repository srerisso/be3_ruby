class AddReferenciaToPresupuestos < ActiveRecord::Migration
  def change
    add_column :presupuestos, :referencia, :string
  end
end
