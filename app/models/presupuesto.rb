class Presupuesto < ActiveRecord::Base
	has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    belongs_to :cliente
    validates :cliente, presence: true
    validates :referencia, presence: true

    searchable do
    	text :referencia
    end
end
