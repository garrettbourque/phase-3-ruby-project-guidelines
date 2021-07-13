puts "seeding data"
Applicant.destroy_all
Child.destroy_all
Adopt.destroy_all
Foster.destroy_all
#FosterFamily.destroy_all

puts "Seeding Applicants..."
a1=Applicant.create(name: "Bill", income: 40000, address:"254 South first St.")
a2=Applicant.create(name: "Angie", income: 80000, address:"3542 West first St.")
a3=Applicant.create(name: "Smith", income: 20000, address:"123 East last Rd.")
a4=Applicant.create(name: "Nancy", income: 2080000, address:"999 richlane Estate")
a5=Applicant.create(name: "Frank", income: 60000, address:"777 Bible St.")
a6=Applicant.create(name: "Pat", income: 60000, address:"666 Bible St.")

puts "Seeding Child..."
c1=Child.create(name: "Allen", age: 4, sex: "male")
c2=Child.create(name: "Garrett", age: 2, sex: "male")
c3=Child.create(name: "Suey", age: 3, sex: "female")
c4=Child.create(name: "Joyce", age: 9, sex: "female")
c5=Child.create(name: "Alex", age: 3, sex: "male")
c6=Child.create(name: "Jaz", age: 8, sex: "female")
c7=Child.create(name: "Sean B", age: 11, sex: "male")
c8=Child.create(name: "Sean S", age: 7, sex: "male")
c9=Child.create(name: "Brianna", age: 10, sex: "female")
c10=Child.create(name: "Daniel", age: 1, sex: "male")
c11=Child.create(name: "Hadi", age: 12, sex: "male")
c12=Child.create(name: "Nahum", age: 6, sex: "male")


puts "Seeding Adopts..."
adopt1=Adopt.create(applicant_id: a1.id, child_id: c1.id, status:"approved")


puts "Seeding FosterFamily..."
family1=FosterFamily.create(name: "Douglas Adams", income: 42000, address:"42 Galaxy Road")

puts "Seeding Fosters..."
foster1=Foster.create(foster_family_id: family1.id, child_id: c2.id, status:"approved")














puts "Done!!"