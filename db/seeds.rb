# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Genre.delete_all
Song.delete_all

Artist.create(name: "Drake", bio: "Who?")
Artist.create(name: "Dr. Dre", bio: "Find him in The Lab")
Artist.create(name: "Eminem", bio: "8 miles and counting")
Artist.create(name: "Lizzo", bio: "The best b")
Artist.create(name: "IU", bio: "Korean popstar")
Artist.create(name: "Taylor Swift", bio: "Country and beyond")

Genre.create(name: "country")
Genre.create(name: "jazz")
Genre.create(name: "blues")
Genre.create(name: "hip hop")
Genre.create(name: "electronica")
Genre.create(name: "pop")

genre_ids = Genre.all.map {|g| g.id }
artist_ids = Artist.all.map {|a| a.id }

Song.create(name: "Weee Woooo", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Oh Brother Sister", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Heidi Hi, Lowdy Lo", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Beep Boop", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "The Continuation", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Can You Rock It", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Party Like A", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Juice", artist_id: artist_ids.sample, genre_id: genre_ids.sample)
Song.create(name: "Together Forever", artist_id: artist_ids.sample, genre_id: genre_ids.sample)