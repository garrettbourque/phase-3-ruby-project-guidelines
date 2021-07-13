class Applicant < ActiveRecord::Base
    has_many :adopts
    has_many :children, through: :adopts

    def show_status
        self.adopts.map{|applicantions| "Your application to adopt #{applicantions.child.name} has been #{applicantions.status}"}
    end

    def self.register(name, income, address)
        Applicant.create(name: name, income: income, address: address)
    end

    def adoption(child)
        #if income is >=40000 then the adoption is approved, otherwise declined
        if self.income/self.children.length + 1 >= 40000
            puts "Congratulations on being approved!"
            Adopt.create(applicant_id: self.id, child_id: child.id, status: "approved")
        else
            puts "Sorry you have been declined."
            Adopt.create(applicant_id: self.id, child_id: child.id, status: "declined")

        end
    end

end