class Presupuesto < ActiveRecord::Base
	has_many :todos,:presupuestos, dependent: :destroy
    accepts_nested_attributes_for :todos
    belongs_to :cliente
    validates :cliente, presence: true
    validates :referencia, presence: true
end
