# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
#van pictures
url1 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527184918/jdgr1sy8ipntnherc9cc.jpg"
url2 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527238281/fcuugizhjwtz7mqwp5h6.jpg"
url4 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527254826/Retro-1967-VW-T2-Camper-Van-814626.jpg"
url5 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527255049/camperstory6full.jpg"
#profile pictures
url3 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527186297/zlkezooorwzs6mzuwopt.jpg"

u1 = User.new(
  {email: "lito@gmail.com", password:"1111111", name: "Lito", username: "Litotechie"}
  )
u1.remote_photo_url = url3
u1.save
u2 = User.create({email: "tony@gmail.com", password:"1111111",name: "Tony", username: "tonyxingabc"})
u3 = User.create({email: "ferdi@gmail.com", password:"1111111",name: "Ferdi", username: "ferdi"})

v1 = Van.new(
  {user_id: u1.id, title: "Old Joe", description: "The most beautiful van in the world", cost_per_night: 70, max_guest: 2, transmission_type: "automatic", toilet: true, beds: 2, location: "Brussels", address: "Avenue Brugmann 28, Brussels"})
  )
v1.remote_photo_url = url1
v1.save

v2 = Van.new({user_id: u2.id,title: "Karate Kid", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "automatic", toilet: false, beds: 2, location: "Brussels", address: "Avenue Kamerdelle 28, Brussels"})
v2.remote_photo_url = url2
v2.save

v3 = Van.create({user_id: u2.id, title: "Old Trafford", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "automatic", toilet: false, beds: 2, location: "Brussels", address: "Avenue Franklin Roosevelt, Brussels"})
v3.remote_photo_url = url4
v3.save

v4 = Van.new({user_id: u1.id, title: "VW Nest", description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "automatic", toilet: false, beds: 2, location: "Brussels", address: "Avenue Louise, Brussels"})
v4.remote_photo_url = url5
v4.save
puts "finished"
