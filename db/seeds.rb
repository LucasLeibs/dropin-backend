# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
User.destroy_all


user1 = User.create({first_name: "Lucas", last_name:"Leibs", email: "poop@gmail.com", password: "lame", password_confirmation: "lame"})



event1 = Event.create({
    user_id: User.all.sample.id, name: 'Soccer Sqaud',
    address: '1426 1st Ave',
    city: 'Seattle',
    state: 'WA',
    zipcode: '98101',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer"})
event2 = 
Event.create({ user_id: User.all.sample.id, name: 'Soccer Game',
    address: '2149 Chestnut St',
    city: 'San Francisco',
    state: 'CA',
    zipcode: '94123',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer"
})
event3 = 
Event.create({ user_id: User.all.sample.id, name: 'Basketball Pickup',
    address: '5675 Maxwelton Rd',
    city: 'Langley',
    state: 'WA',
    zipcode: '98260',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer"
})

puts "seeded"