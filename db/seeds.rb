require 'faker'

Artist.destroy_all
Genre.destroy_all

30.times do |count|
    Artist.create(name: Faker::Music::RockBand.name)
end

20.times do |count|
    Genre.create(name: Faker::Music.genre)
end

Artist.where.not(id: Artist.group(:name).select("min(id)")).destroy_all
Genre.where.not(id: Genre.group(:name).select("min(id)")).destroy_all