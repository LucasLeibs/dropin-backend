# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create({first_name: "Lucas", last_name:"Leibs", email: "poop@gmail.com", password: "lame", password_confirmation: "lame"})
event1 = Event.create({
    user_id: User.all.sample.id, name: 'Soccer Sqaud',
    address: '2043 S 113th St #302',
    city: 'Seattle',
    state: 'WA',
    zipcode: '98168',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer"})
event2 = Event.create({ user_id: User.all.sample.id, name: 'Soccer Game',
    address: '5633 Melendy Dr',
    city: 'Langley',
    state: 'WA',
    zipcode: '98260',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer"
})

puts "seeded"