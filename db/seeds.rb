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
Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!(
  name: "Trattoria Tokyo",
  address: "1-2-3 Ebisu, Shibuya-ku, Tokyo",
  phone_number: "03-1234-5678",
  category: "italian"
)

Restaurant.create!(
  name: "Bistro Shibuya",
  address: "2-4-6 Shibuya, Shibuya-ku, Tokyo",
  phone_number: "03-2345-6789",
  category: "french"
)

Restaurant.create!(
  name: "Sushi Meguro",
  address: "3-5-7 Meguro, Meguro-ku, Tokyo",
  phone_number: "03-3456-7890",
  category: "japanese"
)

Restaurant.create!(
  name: "Dragon Harajuku",
  address: "4-6-8 Jingumae, Shibuya-ku, Tokyo",
  phone_number: "03-4567-8901",
  category: "chinese"
)

Restaurant.create!(
  name: "Brussels Ginza",
  address: "5-7-9 Ginza, Chuo-ku, Tokyo",
  phone_number: "03-5678-9012",
  category: "belgian"
)

puts "Finished! Created #{Restaurant.count} restaurants."
