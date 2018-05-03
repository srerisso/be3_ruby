class Presupuesto < ActiveRecord::Base
	has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    has_many :versiones
    belongs_to :cliente
    validates :cliente, presence: true
    validates :referencia, presence: true
end
