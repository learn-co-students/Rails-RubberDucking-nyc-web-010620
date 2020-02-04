
  Student.destroy_all
  Duck.destroy_all

  s1 = Student.create(name: "miles", mod: 2)
  s2 = Student.create(name: "steve", mod: 3)
  s3 = Student.create(name: "james", mod: 2)
  s4 = Student.create(name: "jimmy", mod: 1)
  s5 = Student.create(name: "Bill", mod: 3)



  Duck.create(name: "boo", description: "Cool", student_id: s1.id)
  Duck.create(name: "poool", description: "Nice", student_id: s2.id)
  Duck.create(name: "Bongo", description: "thoughtfull", student_id: s3.id)
  Duck.create(name: "Bobby", description: "kind", student_id: s5.id)
  Duck.create(name: "yerp", description: "sweet", student_id: s1.id)

