10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

5.times do
  Duck.create(name: Faker::DcComics.name, description: Faker::ChuckNorris.fact)
end
