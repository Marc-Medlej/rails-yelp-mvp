# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
italy = { name: "Italy", address: "Italy Street", category: 'italian', phone_number: '+0112345678'}
chinese = { name: "China", address: "China Street", category: 'chinese', phone_number: '+0212345678'}
japan = { name: "Japan", address: "Japan Street", category: 'japanese'}
french = { name: "France", address: "France Street", category: 'french'}
belgium = { name: "Belgium", address: "Belgium Street", category: 'belgian', phone_number: '+0312345678'}


[ italy, chinese, japan, french, belgium ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"