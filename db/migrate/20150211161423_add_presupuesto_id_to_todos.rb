class AddPresupuestoIdToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :presupuesto_id, :integer
  end
end
