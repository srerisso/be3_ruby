class AddClienteIdToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :cliente_id, :integer
  end
end
