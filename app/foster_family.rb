class FosterFamily < ActiveRecord::Base

    has_many :fosters
    has_many :children, through: :fosters

    def show_status 
        
    end

    def self.register(name, income, address)
        FosterFamily.create(name: name, income: income, address: address)
    end

    def max_children
        
    end

    def add_child
    
    end

    def delete_child

    end


end