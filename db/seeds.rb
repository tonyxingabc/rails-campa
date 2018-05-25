# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Van.destroy_all
User.destroy_all

url1 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527184918/jdgr1sy8ipntnherc9cc.jpg"
url2 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527238281/fcuugizhjwtz7mqwp5h6.jpg"

u1 = User.create({email: "lito@gmail.com", password:"1111111", name: "Lito", username: "Litotechie"})
u2 = User.create({email: "tony@gmail.com", password:"1111111",name: "Tony", username: "tonyxingabc"})
u3 = User.create({email: "ferdi@gmail.com", password:"1111111",name: "Ferdi", username: "ferdi"})

v1 = Van.new(
  {user_id: u1.id, title: "Van 1", description: "The most beautiful van in the world", cost_per_night: 70, max_guest: 2, transmission_type: "manual", toilet: true, beds: 2, location: "Berlin", address: "Avenue Kamerdelle 28, Brüssel"}
  )
v1.remote_photo_url = url1
v1.save

v2 = Van.new({user_id: u2.id,title: "Van 2", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "manual", toilet: false, beds: 2, location: "Auckland", address: "Avenue Kamerdelle 28, Brüssel"})
v2.remote_photo_url = url2
v2.save

v3 = Van.create({user_id: u2.id, title: "Van 3", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "manual", toilet: false, beds: 2, location: "Auckland", address: "Implerstraße 12a, Munich"})
v3.remote_photo_url = url1
v3.save

v4 = Van.new({user_id: u1.id, title: "Van 4", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "manual", toilet: false, beds: 2, location: "Auckland", address: "16 Villa Gaudelet, Paris"})
v4.remote_photo_url = url2
v4.save
puts "finished"
