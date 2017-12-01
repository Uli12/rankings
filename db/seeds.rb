# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
9.times do
  Billboard.create(
    name: Faker::Dessert.flavor
     )
end

300.times do
  Song.create(
    name: Faker::Coffee.variety,
    billboard_id: Faker::Number.between(0, 10),
    releasedate: Faker::Number.between(1999, 2017)
    
  )
end

