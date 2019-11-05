# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Nadia", username: "nadiaf", password: "password")
anaheim = Location.create(city: "Anaheim", state: "California", country: "USA")
disney = anaheim.attractions.create(name: "Disneyland", description: "Happiest place on Earth!")
nadia = User.first
nadia.trips.create()
