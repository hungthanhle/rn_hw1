# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
100.times.each do |i|
  code = Faker::Alphanumeric.alpha(number: 3).upcase
  name = "#{code} - #{Faker::Address.city} International Airport"
  Airport.create(code: code, name: name)
end
