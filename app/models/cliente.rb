class Cliente < ActiveRecord::Base
    has_many :presupuestos
end
