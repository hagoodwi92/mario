# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Music.album, cost: 5, country_of_origin: "us")
    5.times do |index|
      Review.create!(author: Faker::Music.album, content_body: "a BR here :) Thank you for your answer. It worked! I found this answer earlier, but I didn't have tried until now. The reason was that it seems to me this option", rating: 1)
    end
end


