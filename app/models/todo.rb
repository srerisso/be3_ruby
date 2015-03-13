class Todo < ActiveRecord::Base
    belongs_to :presupuesto

    searchable do
    	text :texto    	
    end
end
