# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the db..."
List.destroy_all
Bookmark.destroy_all

puts 'Creating 10 movies...'
10.times do
  Movie.create!(
    title: "#{Faker::Movie.title} - #{rand(1..10)}",
    overview: Faker::Movie.quote,
    rating: rand(1.0..10.0)
  )
end
puts "...created #{Movie.count} lists"

puts 'Creating 30 lists...'
30.times do
  List.create!(
    name: "#{Faker::Emotion.noun} #{rand(1..10)} - #{rand(1..10)}"
  )
end
puts "...created #{List.count} lists"

puts 'Creating 50 bookmarks...'
50.times do
  Bookmark.create!(
    movie: Movie.all.sample,
    list: List.all.sample,
    comment: "#{Faker::TvShows::BigBangTheory.quote}"
  )
end
puts "...created #{Bookmark.count} lists"
