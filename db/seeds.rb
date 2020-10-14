# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attending.destroy_all
Bookmark.destroy_all
Event.destroy_all
User.destroy_all


user1 = User.create({first_name: "Lucas", last_name:"Leiberman", email: "leibs@gmail.com", password: "lame", password_confirmation: "lame", image: '30779061297_6dd8613706_o.jpg'})
user2 = User.create({first_name: "Jim", last_name:"Bob", email: "himbob@gmail.com", password: "lame", password_confirmation: "lame"})



event1 = Event.create({
    user_id: User.first.id, name: 'Soccer Sqaud',
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
Event.create({ user_id: User.first.id, name: 'Basketball Pickup',
    address: '5675 Maxwelton Rd',
    city: 'Langley',
    state: 'WA',
    zipcode: '98260',
    time: "8:00PM",
    date:"8/10/20",
    sport: "soccer",
    image: 'https://capi.myleasestar.com/v2/dimg-crop/59332386/700x400/59332386.jpg'
})

attending1 = Attending.create({ user_id: User.first.id, event_id: Event.last.id })
bookmark1 = Bookmark.create({ user_id: User.all.sample.id, event_id: Event.all.sample.id })
puts "seeded"