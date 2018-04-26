class AddCodigoAlgHijoToPresupuestos < ActiveRecord::Migration[5.1]
  def change
    add_column :presupuestos, :codigoalghijo, :integer
  end
end
