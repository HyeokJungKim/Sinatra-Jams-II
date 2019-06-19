Artist.destroy_all
Instrument.destroy_all
Artistinstrument.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end

5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
end

10.times do
  ai = Artistinstrument.new()
  ai.artist = Artist.all[rand(0...10)]
  ai.instrument = Instrument.all[rand(0...5)]
  ai.save
end

puts "File has been seeded! 🍀"
