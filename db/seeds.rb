puts "seeding data"
Applicant.destroy_all
Child.destroy_all
Adopt.destroy_all
Foster.destroy_all
FosterFamily.destroy_all

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
#adopt2=Adopt.create(applicant_id: a2.id, child_id: c2.id, status:"approved")
adopt3=Adopt.create(applicant_id: a3.id, child_id: c3.id, status:"declined")
adopt4=Adopt.create(applicant_id: a4.id, child_id: c4.id, status:"approved")
adopt5=Adopt.create(applicant_id: a5.id, child_id: c5.id, status:"approved")
adopt6=Adopt.create(applicant_id: a6.id, child_id: c6.id, status:"approved")


puts "Seeding FosterFamily..."
family1=FosterFamily.create(name: "Peter Quill", income: 42000, address:"42 Galaxy Road")
family2=FosterFamily.create(name: "Wednesday Addams", income: 666, address:"0001 Cemetery Lane")
family3=FosterFamily.create(name: "Gomez Addams", income: 100000, address:"0001 Cemetery Lane")
family4=FosterFamily.create(name: "Morticia Addams", income: 300000, address:"0001 Cemetery Lane")
family5=FosterFamily.create(name: "Thanos", income: 1, address:"865 Titan PT")
family6=FosterFamily.create(name: "Dr. Strange", income: 0, address:"177a Bleecker Street")

puts "Seeding Fosters..."
foster1=Foster.create(foster_family_id: family1.id, child_id: c7.id, status:"approved")
foster2=Foster.create(foster_family_id: family2.id, child_id: c8.id, status:"declined")
foster3=Foster.create(foster_family_id: family3.id, child_id: c9.id, status:"approved")
foster4=Foster.create(foster_family_id: family4.id, child_id: c10.id, status:"approved")
foster5=Foster.create(foster_family_id: family5.id, child_id: c11.id, status:"declined")
foster6=Foster.create(foster_family_id: family6.id, child_id: c12.id, status:"declined")














puts "Done!!"