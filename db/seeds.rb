# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'devise'

#Create Users
  5.times do
    user = User.new(
    email:    Faker::Internet.email,
    password: 'password'
    )
    user.skip_confirmation!
    user.save!
  end

10.times do
  registeredapp = Registeredapp.create!(
    name: Faker::Lorem.word,
    url: Faker::Internet.url,
    user: User.first
  )
end

20.times do
  event = Event.create!(
    name: Faker::Lorem.sentence,
    registeredapp: Registeredapp.first
  )
end

puts "Seed finished"
puts "#{Registeredapp.count} registered apps created"
puts "#{Event.count} events created"
