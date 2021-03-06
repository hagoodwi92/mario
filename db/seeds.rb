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
  @product = Product.create!(name: Faker::Music.album, cost: 5, country_of_origin: "us")
  rand(3..7).times do
    @review = Review.create!(author: Faker::Music.album, content_body: "sfsfddfsdfasdfasdfasdfasdfasdfasdfassadfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasasdfdsfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasddfas", rating: 3, product_id: @product.id)
  end
end
