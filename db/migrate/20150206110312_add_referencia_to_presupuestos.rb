class AddReferenciaToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :referencia, :string
  end
end
