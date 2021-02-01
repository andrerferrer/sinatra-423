require 'faker'

puts "create Restaurants"

10.times do
  restaurant = Restaurant.create(
    name: Faker::TvShows::BreakingBad.episode,
    address: Faker::Address.city
  )
end

puts "Done"