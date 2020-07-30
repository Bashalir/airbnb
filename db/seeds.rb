# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

%w[Paris Marseille Lyon Bordeaux Lille Metz].each { |city| City.create(city_name: city) }


20.times do
  chosen_city = City.all.sample

  dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: chosen_city)
  dog = Dog.create(name: Faker::Creature::Dog.name, city: chosen_city)
end

200.times do |i|
  datetime = Faker::Time.between(from: DateTime.now - (100 - i), to: DateTime.now - 100, format: :default)

  chosen_dogsitter = Dogsitter.all.sample
  chosen_dog = Dog.all.sample

  Stroll.create(date: datetime, dog: chosen_dog, dogsitter: chosen_dogsitter, city: chosen_dog.city)
end
