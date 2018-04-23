class AddPresupuestoIdToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :presupuesto_id, :integer
  end
end
