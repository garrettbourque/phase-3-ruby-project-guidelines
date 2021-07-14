class FosterFamily < ActiveRecord::Base

    has_many :fosters
    has_many :children, through: :fosters

    def show_status 
        self.fosters.map{|applicantions| "Your application to foster #{applicantions.child.name} has been #{applicantions.status}"}
    end

    def self.register(name, income, address)
        FosterFamily.create(name: name, income: income, address: address)
    end

    def child_care(child)

        #if income is >=40000 then the adoption is approved, otherwise declined
        if child.fosterability && self.my_kids.length < self.max_children
            puts "Congratulations on being approved!"
            Foster.create(foster_family_id: self.id, child_id: child.id, status: "approved")
        else
            puts "Sorry you have been declined."
            Foster.create(foster_family_id: self.id, child_id: child.id, status: "declined")

        end
    end

    def my_kids
        self.fosters.select{|applications| applications.status==="approved"}
    end

    def max_children
        self.income/20000
    end

    def delete_child(child)
        self.fosters.find{|fostering| fostering.child_id==child.id && fostering.status=="approved"}.destroy
        puts "#{self.name} is no longer fostering #{child.name}."
    end

    def change_address(new_address)
        self.address=new_address
        self.save
    end

    def change_income(new_income)
        self.income=new_income.to_i
        self.save

    end

    def available_children
        Child.foster_available.map{|children| puts "#{children.name}, "}.join
    end

    def obtainable_children
        orphans=[]
        Child.foster_available.map{|children| orphans.push(children.name)}
        return orphans
    end
end