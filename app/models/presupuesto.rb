class Presupuesto < ActiveRecord::Base
	# Presupuesto has many ToDos
	has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    # tree-like structure. One Presupuesto can have many Presupuestos
    belongs_to :parent_presupuesto, class_name: Presupuesto
    has_many :child_presupuestos, class_name: Presupuesto, foreign_key: "parent_presupuesto_id"
    # A Cliente has_may Presupuestos
    belongs_to :cliente
    # Cliente and Referencia can not be empty
    validates :cliente, presence: true
    validates :referencia, presence: true
end
