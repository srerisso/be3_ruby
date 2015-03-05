class Presupuesto < ActiveRecord::Base
	has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    belongs_to :cliente
end
