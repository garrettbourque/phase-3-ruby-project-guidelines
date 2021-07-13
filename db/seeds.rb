puts "seeding data"
Applicant.destroy_all
Child.destroy_all
#Adopt.destroy_all
#Foster.destroy_all
#FosterFamily.destroy_all

puts "Seeding Applicants..."
Applicant.create(name: "Bill", income: 40000, address:"254 South first St.")
#Applicant.create(name: "Angie", income: 80000, address:"3542 West first St.")
#Applicant.create(name: "Smith", income: 20000, address:"123 East last Rd.")
#Applicant.create(name: "Nancy", income: 2080000, address:"999 richlane Estate")
#Applicant.create(name: "Frank", income: 60000, address:"777 Bible St.")
#Applicant.create(name: "Pat", income: 60000, address:"666 Bible St.")

puts "Seeding Child..."
#Child.create(name: "Allen", age: 4, sex: "male")
#Child.create(name: "Garrett", age: 2, sex: "male")
#Child.create(name: "Suey", age: 3, sex: "female")
#Child.create(name: "Joyce", age: 9, sex: "female")
#Child.create(name: "Alex", age: 3, sex: "male")
#Child.create(name: "Jaz", age: 8, sex: "female")
#Child.create(name: "Sean B", age: 11, sex: "male")
#Child.create(name: "Sean S", age: 7, sex: "male")
#Child.create(name: "Brianna", age: 10, sex: "female")
#Child.create(name: "Daniel", age: 1, sex: "male")
#Child.create(name: "Hadi", age: 12, sex: "male")
#Child.create(name: "Nahum", age: 6, sex: "male")


puts "Seeding FosterFamily..."



puts "Seeding Adopts..."



puts "Seeding Fosters..."




puts "Done!!"