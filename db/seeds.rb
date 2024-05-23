# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restelrantes..."

kim_chi = {
  name: "Kimchi Express",
  address: "31 Brickfield Rd, Woodstock, Cape Town, 7925",
  phone_number: "061 582 7793",
  category: "Chinese"
  }

  italian_affair = {
  name: "Italian Affair",
  address: "74 New Church St, Tamboerskloof, Cape Town, 8001",
  phone_number: "021 424 3494",
  category: "Italian"
  }

  sushi_sensation = {
  name: "Sushi Sensation",
  address: "Corner of Long St & Bloem St, Cape Town City Centre, Cape Town, 8001",
  phone_number: "021 422 2798",
  category: "Japanese"
  }

  spice_route = {
  name: "Spice Route",
  address: "S12, Spice Route Destination, Suid Agter Paarl Rd, Suider-Paarl, 7620",
  phone_number: "021 863 5200",
  category: "French"
  }
mexican_madness = {
  name: "Mexican Madness",
  address: "105 Kloof St, Gardens, Cape Town, 8001",
  phone_number: "021 426 5979",
  category: "Belgian"
}
puts "testing"

[kim_chi, italian_affair, sushi_sensation, spice_route, mexican_madness].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
