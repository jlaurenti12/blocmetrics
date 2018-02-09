# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'devise'

# Create Users
3.times do
  user = User.new(
    email: Faker::Internet.email,
    password: 'password'
    )
  user.skip_confirmation!
  user.save!
end

users = User.all

# Create a member
member = User.new(
  email: 'member@example.com',
  password: 'helloworld'
  )
member.skip_confirmation!
member.save!

# Create Registered Application
Registeredapp.create!(
  user: users.sample,
  name: 'Valid Application',
  url: 'http://registered_application.com'
  )

5.times do
  Registeredapp.create!(
    user: users.sample,
    name: Faker::Lorem.word,
    url: Faker::Internet.url
    )
end

registeredapps = Registeredapp.all

registeredapps.each do | registeredapp |
  # Create Events
  Event.create!(
    registeredapp: registeredapp,
    name: "Level 1"
    )

  Event.create!(
    registeredapp: registeredapp,
    name: "Level 2"
    )

  Event.create!(
    registeredapp: registeredapp,
    name: "Level 3"
    )

  Event.create!(
    registeredapp: registeredapp,
    name: "Level 4"
    )

  Event.create!(
    registeredapp: registeredapp,
    name: "Level 5"
    )
end

puts "#{User.count} users created"
puts "#{Registeredapp.count} applications created"
puts "#{Event.count} events created"
