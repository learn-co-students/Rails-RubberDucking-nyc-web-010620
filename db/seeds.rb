Student.destroy_all

s1 = Student.create(name:"Alex", mod:2)
s2 = Student.create(name:"Miles", mod:2)
s3 = Student.create(name:"Shalva", mod:2)
s4 = Student.create(name:"Ramsey", mod:1)
s5 = Student.create(name:"Joseph", mod:1)

Duck.destroy_all
d1 = Duck.create(name:"Bob", description:"Yellow duck", student:s1)
d2 = Duck.create(name:"Blister", description:"Big yellow duck", student:s2)
d3 = Duck.create(name:"Grumpy", description:"Big yellow grumpy duck", student:s2)
d4 = Duck.create(name:"Yo-Yo", description:"Ordinary duck", student:s3)
d5 = Duck.create(name:"Baby", description:"Baby duck", student:s4)
d6 = Duck.create(name:"Izzy", description:"Easy duck", student:s5)
