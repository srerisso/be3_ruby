class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.belongs_to :presupuesto, index: true
      t.string :texto

      t.timestamps
    end
  end
end
