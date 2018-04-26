class AddEsHijoToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :eshijo, :boolean
  end
end
