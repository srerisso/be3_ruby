class AddClienteIdToPresupuestos < ActiveRecord::Migration
  def change
    add_column :presupuestos, :cliente_id, :integer
  end
end
