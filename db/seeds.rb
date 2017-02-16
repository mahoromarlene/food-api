# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Food.create(
      id: Faker::Food.id,
      ingredient: Faker::Food.ingredient,
      spice: Faker::Food.spice,
      measurement: Faker::Food.measurement,
    )
end