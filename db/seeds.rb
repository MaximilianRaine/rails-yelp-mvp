# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants_data = [
{ name: "Nobelhart & Schmutzig", address: "Friedrichstraße 218, 10969 Berlin, Germany", phone_number: "030",category: "chinese" },
{ name: "Bastard Berlin", address: "Reichenberger Str. 122, 10999 Berlin, Germany", phone_number: "030", category: "italian" },
{ name: "Lokal 6", address: "Gabriel-Max-Straße 6, 10245 Berlin, Germany", phone_number: "030", category: "japanese" },
{ name: "Coda Dessert Dining", address: "Friedelstraße 47, 12047 Berlin, Germany", phone_number: "030", category: "french" },
{ name: "Prater Garten", address: "Kastanienallee 7-9, 10435 Berlin, Germany", phone_number: "030", category: "belgian" },
]
restaurants_data.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
