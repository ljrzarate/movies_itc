# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Casting.destroy_all
Movie.destroy_all
User.destroy_all

actor1 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
actor2 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
actor3 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
actor4 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
actor5 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)

producer1 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
producer2 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
producer3 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
producer4 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
producer5 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)

director1 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)
director2 = User.create(first_name: Faker::Games::Heroes.name, last_name: Faker::Games::Heroes.klass)

movie1 = Movie.create(title: Faker::Movie.title, release_year: Date.current)
movie2 = Movie.create(title: Faker::Movie.title, release_year: (Date.current - 1.year))
movie3 = Movie.create(title: Faker::Movie.title, release_year: Date.current + 2.years)


movie1.actors = [actor1, actor2]
movie1.producers = [producer1, producer2]
movie1.directors = [actor1, producer1]
movie1.save!

movie2.actors = [actor3, actor4]
movie2.producers = [producer3, producer4]
movie2.directors = [actor3, producer4]
movie2.save!

movie3.actors = [actor5, actor2]
movie3.producers = [producer5, producer2]
movie3.directors = [director1, director2]
movie3.save!