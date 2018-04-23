class CreatePresupuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :presupuestos do |t|
      t.string :codigoalg
      t.string :series
      t.string :acabado

      t.timestamps
    end
  end
end
