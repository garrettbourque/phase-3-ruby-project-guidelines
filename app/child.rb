class Child < ActiveRecord::Base
    has_many :adopts
    has_many :applicants, through: :adopts

    has_many :fosters
    has_many :foster_families, through: :fosters

    def self.adopt_available
        self.select{|status| status.adoptability}
    end


    def adoptability
        if self.adopts.select{|applications| applications.status=="approved"}.length==0
            return true
        else
            return false
        end
    end

    def self.foster_available
        self.select{|status| status.fosterability}
    end


    def fosterability
        if self.fosters.select{|applications| applications.status=="approved"}.length==0
            return true
        else
            return false
        end
    end

end