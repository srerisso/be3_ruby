class CreatePresupuestos < ActiveRecord::Migration
  def change
    create_table :presupuestos do |t|
      t.string :codigoalg
      t.string :series
      t.string :acabado

      t.timestamps
    end
  end
end
