# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do
#   Car.create (
#     name: Faker::Vehicle.manufacture,
#     model: Faker::Vehicle.model ,
#     price: Faker::Commerce.price(range: 0..100_000_0, as_string: true),
#     description: Faker::Vehicle.description,
#     rating: Faker::Number.between(from: 1, to: 5),
#     review: Faker::Vehicle.review
#   )
# end
puts "destroy all"
Car.destroy_all
User.destroy_all
puts "creating user"
mohamed = User.create!(
  email: "mohamed246@live.com",
  password: "123456"
)
puts "creating cars"
5.times do
  Car.create!(
    name: Faker::Vehicle.manufacture,
    model: Faker::Vehicle.model,
    price: Faker::Commerce.price(range: 0..100_00, as_string: true),
    description: Faker::Restaurant.description,
    rating: rand(1..5),
    review: Faker::Restaurant.review,
    user_id: mohamed.id
  )
end
puts "done"
